DC_theme_generator <- function(type, legend=T, ticks="out", x.axis.angle=0, hjust=0.5, vjust=0.5, fontsize.cex=1.5, fontfamily="serif", fontstyle="bold.italic"){
  
  # # Generate themes for ggplot2
  # # Author: Deepankar Chakroborty
  # # Available at: https://github.com/dchakro/ggplot_themes
  # # Report issues: https://github.com/dchakro/ggplot_themes/issues
  
  ## Options:
  # type: 'L', 'square'
  # ticks: 'in', 'out'
  # fontfamily: 'serif' , 'sans' , 'mono'
  # fontstyle = 'plain', 'italic', 'bold', 'bold.italic'
  
  ticks <- tolower(ticks)
  fontfamily <- tolower(fontfamily)
  
  if( type == "square"){
    if( legend ){
      # Type: square , with legend"
      themeToReturn <- ggplot2::theme(
        panel.border = element_rect(linetype = 1, 
                                    colour = "black",
                                    fill=NA,
                                    size=1),
        panel.background=element_blank(),
        panel.grid.major=element_line(color=NA),
        axis.ticks = element_line(colour = "black"),
        text = element_text(family = fontfamily,
                            face = fontstyle),
        axis.ticks.length = unit(ifelse(ticks=="in",-0.2,0.2),"cm"),
        axis.title = element_text(size=rel(fontsize.cex)),
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
                                   color="black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        legend.key= element_rect(fill=NA,
                                 colour = NA)
        )
    }else{
      # Type: square , without legend"
      themeToReturn <- ggplot2::theme(
        panel.border = element_rect(linetype = 1, 
                                    colour = "black",
                                    fill=NA,
                                    size=1),
        panel.background=element_blank(),
        panel.grid.major=element_line(color=NA),
        axis.ticks = element_line(colour = "black"),
        text = element_text(family = fontfamily,
                            face = fontstyle),
        axis.ticks.length = unit(ifelse(ticks=="in",-0.2,0.2),"cm"),
        axis.title = element_text(size=rel(fontsize.cex)),
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
                                   color="black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        legend.key= element_rect(fill=NA,
                                 colour = NA),
        legend.position="none"
      )
    }
  }
  
  if( type == 'L' ){
    if( legend ){
      # Type: L , with legend"
      themeToReturn <- ggplot2::theme(
        axis.line = element_line(colour = "black",
                                 size=0.5),
        panel.border = element_blank(),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.ticks = element_line(colour = "black"),
        text = element_text(family = fontfamily,
                            face = fontstyle),
        axis.ticks.length = unit(ifelse(ticks=="in",-0.2,0.2), "cm"),
        axis.title = element_text(size=rel(fontsize.cex)),
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
                                   color="black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        legend.key = element_rect(fill=NA,
                                  colour = NA)
      )
    } else {
      # Type: L , without legend
      themeToReturn <- ggplot2::theme(
        axis.line = element_line(colour = "black",
                                 size=0.5),
        panel.border = element_blank(),
        panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.ticks = element_line(colour = "black"),
        text = element_text(family = fontfamily,
                            face = fontstyle),
        axis.ticks.length = unit(ifelse(ticks=="in",-0.2,0.2), "cm"),
        axis.title = element_text(size=rel(fontsize.cex)),
        axis.text.y = element_text(family = fontfamily,
                                   face = "plain",
                                   size = rel(fontsize.cex),
                                   hjust=0.5,
                                   angle=0,
                                   color="black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        axis.text.x = element_text(family = fontfamily,
                                   face = "plain",
                                   angle = x.axis.angle,
                                   hjust = hjust,
                                   vjust = vjust,
                                   size = rel(fontsize.cex),
                                   color="black",
                                   margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
        legend.key = element_rect(fill=NA,
                                  colour = NA),
        legend.position="none"
      )
    }  
  }
  return(themeToReturn)
}
