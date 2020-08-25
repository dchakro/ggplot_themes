DC_theme_generator <- function(type, legend=T, ticks="out", x.axis.angle=0, hjust=0.5, vjust=0.5, fontsize.cex=1.5, fontfamily="serif", ax.fontstyle="bold.italic"){
  # #<---------------------------->
  # # You must include this section when:
  # # Distributing, Embedding, Using and/or Modifying this code.
  # # Please read and abide by the terms of the included LICENSE.
  # # Copyright 2020, Deepankar Chakroborty, All rights reserved.
  
  # # Author: Deepankar Chakroborty
  # # Available at: https://github.com/dchakro/ggplot_themes
  # # Report issues: https://github.com/dchakro/ggplot_themes/issues
  # # LICENSE: https://github.com/dchakro/ggplot_themes/blob/master/LICENSE
  # #<---------------------------->
  
  # # PURPOSE:  Generate themes for ggplot2
  
  # # OPTIONS:
  # type: 'L', 'square'
  # legent: T = left, F = no legend
  # ticks: 'in', 'out'
  # fontfamily: 'serif' , 'sans' , 'mono', 'Helvetica', 'Palatino'
  # ax.fontstyle = 'plain', 'italic', 'bold', 'bold.italic'
  # x.axis.angle = 45  (i.e. angle for the x axis text)
  # hjust and vjust = to adjust the x axis text
  
  ticks <- tolower(ticks)
  fontfamily <- ifelse(test = tolower(fontfamily) %in% c("sans","serif","mono"),yes = tolower(fontfamily),no = fontfamily)
  
  if( type == "square"){
      # Type: square
      themeToReturn <- ggplot2::theme(
        panel.border = element_rect(linetype = 1, 
                                    colour = "black",
                                    fill=NA,
                                    size=1),
        panel.background=element_blank(),
        panel.grid.major=element_line(color=NA),
        axis.ticks = element_line(colour = "black"),
        text = element_text(family = fontfamily),
        plot.title = element_text(family = fontfamily,
                                  face="bold",
                                  color = "black",
                                  size = rel(fontsize.cex)),
        axis.ticks.length = unit(ifelse(ticks=="in",-0.2,0.2),"cm"),
        axis.title = element_text(family = fontfamily,
                                  face = ax.fontstyle,
                                  size=rel(fontsize.cex)),
        axis.text.y = element_text(family = fontfamily,
                                   face = "plain",
                                   size = rel(fontsize.cex),
                                   hjust = 0.5,
                                   angle = 0,
                                   color = "black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        axis.text.x = element_text(family = fontfamily,
                                   face = "plain",
                                   angle = x.axis.angle,
                                   hjust = hjust,
                                   vjust = vjust,
                                   size = rel(fontsize.cex),
                                   color = "black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        legend.key= element_rect(fill=NA,
                                 colour = NA),
        legend.position=ifelse(test = legend,yes = "right" ,no = "none")
        )
  }
  
  if( type == 'L' ){
      # Type: L
      themeToReturn <- ggplot2::theme(
        axis.line = element_line(colour = "black",
                                 size=0.5),
        panel.border = element_blank(),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.ticks = element_line(colour = "black"),
        text = element_text(family = fontfamily),
        plot.title = element_text(family = fontfamily,
                                  face="bold",
                                  color = "black",
                                  size = rel(fontsize.cex)),
        axis.ticks.length = unit(ifelse(ticks=="in",-0.2,0.2), "cm"),
        axis.title = element_text(family = fontfamily,
                                  face = ax.fontstyle,
                                  size=rel(fontsize.cex)),
        axis.text.y = element_text(family = fontfamily,
                                   face = "plain",
                                   size = rel(fontsize.cex),
                                   hjust = 0.5,
                                   angle = 0,
                                   color="black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        axis.text.x = element_text(family = fontfamily,
                                   face = "plain",
                                   angle = x.axis.angle,
                                   hjust = hjust,
                                   vjust = vjust,
                                   size = rel(fontsize.cex),
                                   color = "black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        legend.key = element_rect(fill=NA,
                                  colour = NA),
        legend.position=ifelse(test = legend,yes = "right" ,no = "none")
      )
    }  
  return(themeToReturn)
}
