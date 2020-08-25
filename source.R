rm(list=ls())
set.seed(100)
a <- rnorm(50,mean = 50,sd = 1)
b <- rnorm(50,mean = 0,sd = 1)
dat <- data.frame(X=a,Y=b)
dat$Class <- sample(x = c("beta","alpha"),size = 10,replace = T)

library(ggplot2)

ggplot(data = dat,aes(x=X,y=Y,color=Class))+geom_point()+scale_color_manual(values=c("red","blue"))+xlab("X-axis")+ylab("Y-axis")+ggtitle("Default theme")
ggsave("~/Desktop/tmp/1.png",width = 6,height = 5,dpi = "print")

ggplot(data = dat,aes(x=X,y=Y,color=Class))+geom_point()+scale_color_manual(values=c("red","blue"))+xlab("X-axis")+ylab("Y-axis")+ggtitle("ggplot2::theme_bw")+theme_bw()
ggsave("~/Desktop/tmp/2.png",width = 6,height = 5,dpi = "print")

source('https://raw.githubusercontent.com/dchakro/ggplot_themes/master/DC_theme_generator.R')

customtheme <- DC_theme_generator(type='L')
ggplot(data = dat,aes(x=X,y=Y,color=Class))+geom_point()+scale_color_manual(values=c("red","blue"))+xlab("X-axis")+ylab("Y-axis")+ggtitle("DC_theme_generator('L')")+customtheme
ggsave("~/Desktop/tmp/3.png",width = 6,height = 5,dpi = "print")

customtheme <- DC_theme_generator(type='square')
ggplot(data = dat,aes(x=X,y=Y,color=Class))+geom_point()+scale_color_manual(values=c("red","blue"))+xlab("X-axis")+ylab("Y-axis")+ggtitle("DC_theme_generator('square')")+customtheme
ggsave("~/Desktop/tmp/4.png",width = 6,height = 5,dpi = "print")




customtheme <- DC_theme_generator(type = 'L',
                                  legend = 'F',
                                  ticks = 'in',
                                  x.axis.angle = 45,
                                  hjust = 0.5,
                                  vjust = 0.5,
                                  fontsize.cex = 1.8,
                                  fontfamily = 'mono',
                                  fontstyle = "bold")

ggplot(data = dat, aes(x=X,y=Y,color=Class)) + geom_point() + scale_color_manual(values=c("red","blue")) + xlab("X-axis") + ylab("Y-axis") + ggtitle("Customized DC_theme_generator") + customtheme
