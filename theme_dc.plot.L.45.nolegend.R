# This is legacy theme defination for maintaining compatibility  with my own historical code base.

warning("This is legacy code. Please migrate to: https://github.com/dchakro/ggplot_themes")
message("Please run:")
message("source('https://raw.githubusercontent.com/dchakro/ggplot_themes/master/DC_theme_generator.R')")

library(ggplot2)
theme_dc.plot.L.45.nolegend=ggplot2::theme(
  axis.line = element_line(colour = "black",
                           size=0.5),
  panel.border = element_blank(),
  panel.background=element_blank(),
  panel.grid.major=element_blank(),
  panel.grid.minor =element_blank(),
  axis.text.y= element_text(size = rel(1.5),
                            color="black",
                            margin=unit(c(0.3,0.3,0.3,0.3), "cm"),
                            hjust=0.5,
                            angle=0),
  legend.key= element_rect(fill=NA,
                           colour = NA),
  legend.position="none", 
  axis.ticks = element_line(colour = "black"),
  axis.text.x = element_text(angle = 45,
    hjust = 1,
    size = rel(1.5),
    color="black",
    margin=unit(c(0.3,0.3,0.3,0.3), "cm")),
  text=element_text(family="serif"),
  axis.ticks.length =unit(0.2, "cm"),
  axis.title = element_text(size=rel(1.5))
  )
