
beclookup <- read.csv("data/LOOKUP.BEC.csv")
splookup <- read.csv("data/LOOKUP.TreeSpeciesCodes.csv")
agelookup <- read.csv("data/LOOKUP.ForestAge.csv")
htlookup <- read.csv("data/LOOKUP.ForestHt.csv")

spcodes <- sort(unique(splookup$code_use))
spcodes <- spcodes[-which(spcodes %in% c("0", "999", ""))]

mastermatrix <- expand.grid(BecZone=beclookup$BEC[beclookup$InMatrix=="Yes"],
                            SpeciesGroup=unique(spcodes),
                            Age=unique(agelookup$ForAge),
                            Height=unique(htlookup$ForHt))
mastermatrix$Age <- factor(mastermatrix$Age, ordered=T, levels=levels(mastermatrix$Age)[c(3,4,5,1,2)])
mastermatrix$Height <- factor(mastermatrix$Height, ordered=T, levels=c("1", "2", "3", "4+"))
mastermatrix$ForID <- with(mastermatrix, paste(BecZone, SpeciesGroup, Age, Height, sep="."))
qs <- mastermatrix

# Creates a secondary ForID based on the original species codes.
splookup.vri <- splookup
colnames(splookup.vri)[which(colnames(splookup.vri) == "code_use")] <- "SpeciesGroup"
splookup.vri <- splookup.vri[splookup.vri$file %in% "mig_birds_Layer_polyarea_forstandatts",c("SpeciesGroup", "code_orig", "file")]
splookup.vri <- splookup.vri[!duplicated(splookup.vri),]
colnames(splookup.vri)[which(colnames(splookup.vri)=="code_orig")] <- "code_vri_file"
splookup.vri <- splookup.vri[splookup.vri$SpeciesGroup %in% mastermatrix$SpeciesGroup,]

mastermatrix <- merge(mastermatrix, splookup.vri[c("SpeciesGroup", "code_vri_file")], by="SpeciesGroup", all = T)
mastermatrix <- mastermatrix[!duplicated(mastermatrix),]
mastermatrix$ForID.VRISp <- with(mastermatrix, paste(BecZone, code_vri_file, Age, Height, sep="."))
mastermatrix$ForIDSame <- mastermatrix$ForID == mastermatrix$ForID.VRISp

vartab <- data.frame(BecZone=rep(NA, times=22), SpeciesGroup=rep(NA, times=22), Age=rep(NA, times=22), Height=rep(NA, times=22))
vartab$BecZone[1:length(unique(mastermatrix$BecZone))]<- as.character(unique(mastermatrix$BecZone))
vartab$SpeciesGroup[1:length(unique(mastermatrix$SpeciesGroup))]<- as.character(unique(mastermatrix$SpeciesGroup))
vartab$Age[1:length(levels(mastermatrix$Age))]<- as.character(levels(mastermatrix$Age))
vartab$Height[1:length(levels(mastermatrix$Height))]<- as.character(levels(mastermatrix$Height))
vartab[is.na(vartab)] <- ""

