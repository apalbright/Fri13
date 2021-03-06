#heatplot for dist of fri 13 1985-2015

library(ggplot2)
library(reshape2)
library(ggthemes)
library(grid)

setwd("raw_data")
fri <- read.csv("fri13.csv")
fri <- fri[order(fri$Year),]
fri <- melt(fri, id.var = 'Year')

ggplot(fri, aes(variable, Year)) +
	geom_tile(aes(fill = value)) +
	geom_tile(aes(fill = value), colour = "black", show.legend=FALSE)  +
	scale_fill_manual(values=c("grey", "red"), guide_legend(title="")) +
	theme_few(base_size=10)+
	labs(title = "The Distribution of Friday the 13th's Over the Last 30 Years")+
	xlab("Month")+
	ylab("Year")+
	scale_y_continuous(breaks=seq(1985,2015,1))+
	theme(axis.text.x = element_text(colour="black"), axis.text.y = element_text(colour="black"), legend.text=element_text(colour="black"), legend.key=element_rect(colour="black"), axis.title.x = element_text(vjust=-0.4), axis.title.y = element_text(vjust=1),  plot.title = element_text(size = 15), axis.ticks.length=unit(0.25,"cm"), plot.margin = unit(c(1, 0, 1, 1), "lines"))
