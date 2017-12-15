
beclookup <- read.csv("data/LOOKUP.BEC.csv")
splookup <- read.csv("data/LOOKUP.TreeSpeciesCodes.csv")
agelookup <- read.csv("data/LOOKUP.ForestAge.csv")
htlookup <- read.csv("data/LOOKUP.ForestHt.csv")

spcodes <- sort(unique(splookup$code_use))
spcodes <- spcodes[-which(spcodes %in% c("0", "999", ""))]

mastermatrix <- expand.grid(BEC=beclookup$BEC[beclookup$InMatrix=="Yes"],
                            SpeciesGroup=unique(spcodes),
                            ForAge=unique(agelookup$ForAge),
                            ForHt=unique(htlookup$ForHt))
mastermatrix$ForAge <- factor(mastermatrix$ForAge, ordered=T, levels=levels(mastermatrix$ForAge)[c(3,4,5,1,2)])
mastermatrix$ForHt <- factor(mastermatrix$ForHt, ordered=T, levels=c("1", "2", "3", "4+"))
mastermatrix$ForID <- with(mastermatrix, paste(BEC, SpeciesGroup, ForAge, ForHt, sep="."))
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
mastermatrix$ForID.VRISp <- with(mastermatrix, paste(BEC, code_vri_file, ForAge, ForHt, sep="."))
mastermatrix$ForIDSame <- mastermatrix$ForID == mastermatrix$ForID.VRISp

vartab <- data.frame(BEC=rep(NA, times=22), SpeciesGroup=rep(NA, times=22), ForAge=rep(NA, times=22), ForHt=rep(NA, times=22))
vartab$BEC[1:length(unique(mastermatrix$BEC))]<- as.character(unique(mastermatrix$BEC))
vartab$SpeciesGroup[1:length(unique(mastermatrix$SpeciesGroup))]<- as.character(unique(mastermatrix$SpeciesGroup))
vartab$ForAge[1:length(levels(mastermatrix$ForAge))]<- as.character(levels(mastermatrix$ForAge))
vartab$ForHt[1:length(levels(mastermatrix$ForHt))]<- as.character(levels(mastermatrix$ForHt))
vartab[is.na(vartab)] <- ""


### USEFUL FUNCTIONS
myfacettheme <- theme_grey() + 
  theme(text=element_text(size=12), 
        axis.ticks = element_line(colour = "black"),             
        axis.text = element_text(size=10),
        axis.title.y = element_text(angle=90, vjust=0.5),
        axis.text.x = element_text(angle=90, size=9),
        
        legend.key = element_blank(), 
        legend.text = element_text(size=12),
        legend.position = "top",
        legend.title = element_blank(),
        
        panel.background = element_rect(fill="white", colour=NA), 
        panel.border = element_rect(fill = NA, colour = "grey50"), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_line(colour="grey98", size=0.5), 
        
        strip.background = element_rect(fill="grey80", colour="grey50"),
        strip.text.x= element_text(size=11)
  )