#Functions and colour palettes


### USEFUL FUNCTIONS
#-------------------  Packages ---------------------------------------

require(ggplot2)
require(reshape2)
require(RColorBrewer)


#-------------------  MyFacetTheme  ----------------------------------
myfacettheme1 <- theme_grey() + 
  theme(text=element_text(size=12), 
        axis.ticks = element_line(colour = "black"),             
        axis.text = element_text(size=10),
        axis.title.y = element_text(angle=90, vjust=0.5),
        axis.text.x = element_text(angle=90, size=9),
        
        legend.key = element_blank(), 
        legend.text = element_text(size=12),
        legend.position = "top",
        
        panel.background = element_rect(fill="white", colour=NA), 
        panel.border = element_rect(fill = NA, colour = "grey50"), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_line(colour="grey98", size=0.5), 
        
        strip.background = element_rect(fill="grey80", colour="grey50"),
        strip.text.x= element_text(size=11)
  )

myfacettheme2 <- theme_grey() + 
  theme(text=element_text(size=12), 
        axis.ticks = element_line(colour = "black"),             
        axis.text = element_text(size=10),
        axis.title.y = element_text(angle=90, vjust=0.5),
        axis.text.x = element_text(angle=0, size=9),
        
        legend.key = element_blank(), 
        legend.text = element_text(size=12),
        legend.position = "top",
        
        panel.background = element_rect(fill="white", colour=NA), 
        panel.border = element_rect(fill = NA, colour = "grey50"), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_line(colour="grey98", size=0.5), 
        
        strip.background = element_rect(fill="grey80", colour="grey50"),
        strip.text.x= element_text(size=11)
  )

myfacettheme3 <- theme_grey() + 
  theme(text=element_text(size=12), 
        axis.ticks = element_line(colour = "black"),             
        axis.text = element_text(size=10),
        axis.title.y = element_text(angle=90, vjust=0.5),
        axis.text.x = element_text(angle=0, size=9),
        
        legend.key = element_blank(), 
        legend.text = element_text(size=12),
        legend.position = "right",
        
        panel.background = element_rect(fill="white", colour=NA), 
        panel.border = element_rect(fill = NA, colour = "grey50"), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_line(colour="grey98", size=0.5), 
        
        strip.background = element_rect(fill="grey80", colour="grey50"),
        strip.text.x= element_text(size=11)
  )

myfacettheme4 <- theme_grey() + 
  theme(text=element_text(size=12), 
        axis.ticks = element_line(colour = "black"),             
        axis.text = element_text(size=10),
        axis.title.y = element_text(angle=90, vjust=0.5),
        axis.text.x = element_text(angle=90, size=9),
        
        legend.key = element_blank(), 
        legend.text = element_text(size=12),
        legend.position = "right",
        
        panel.background = element_rect(fill="white", colour=NA), 
        panel.border = element_rect(fill = NA, colour = "grey50"), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_line(colour="grey98", size=0.5), 
        
        strip.background = element_rect(fill="grey80", colour="grey50"),
        strip.text.x= element_text(size=11)
  )
#---------------------------------  Colour Palettes  ----------------------------------

# Rank
palrank <- colorRampPalette(brewer.pal(9, "PuRd"))
palrank <- palrank(8)[3:8]

# Height


# BecZone
palbec <- c("#ff0000", #BG_PP
            "#009999", #BWBS
            "#9966ff", #ESSF
            "#92d050", #ICH_MH
            "#ffff00", #IDF
            "#833c0c", #MS
            "#00b0f0", #SBS_SBPS
            "#548235")  #SWB

# SpeciesGroup
palsg <- c("#833c0c", #Act
           "#b89268", #At_Con
           "#00b050", #CH
           "#a9d08e", #CH_Decid
           "#eab144", #Decid
           "#4997a7", #Fd
           "#a9c9cf", #Fd<75
           "#00b0f0", #FL
           "#3fcdff", #FL_Decid
           "#6302ce", #Other
           "#9966ff", #Other_Decid
           "#7030a0", #Pa
           "#d60093", #Pl
           "#ff33cc", #Pl_Decid
           "#ff0000", #Pl_Mix
           "#ed7d31", #PyFd
           "#bf8f00", #PyFd_Dec
           "#70ad47", #Sb_Decid
           "#548235", #Sb_Mix
           "#ffc000", #SwB
           "#ffe699") #SwB_Decid
              
#Age              
palage <- c("#e1f7e6", #3-30
            "#9fe1af", #31-80
            "#38c266", #81-120
            "#2b814c", #121-250
            "#144423") 
    
#Height                  
palht <- c("#feffb3", #1
           "#f7f37a", #2
           "#f8e43b", #3
           "#f9c617") #4      