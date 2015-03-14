#make area chart

library(ggplot2)
library(RColorBrewer)
library(ggthemes)
library(gridExtra)

setwd("raw_data")
fri <- read.csv('fri13a.csv')

ggplot(fri, aes(x=Year,y=num)) + geom_bar(stat="identity")+ 
	labs(title = "Number of Friday the 13th's Over the Past 30 Years") +
	scale_x_continuous(breaks=seq(1985,2015,5))+
	scale_y_continuous(breaks=c(0,1,2,3))+
	#scale_fill_manual(values = pal1) +
	theme_fivethirtyeight()