## Network to show Number of Shared Plotlines in TV Show 'Friends'
## Alex Albright--based on code by Katie Choi for Supreme Court Justices Dissent Network (63)
library(igraph)
library(network)

## Creates an adjacency matrix for a fully connected network
Jan<-c(0,0,0,1,0,1,0,0,0,1,0,0)
Fe<-c(0,0,1,0,0,0,0,1,0,0,1,0)
Mar<-c(0,1,0,0,0,0,0,0,0,0,1,0)
Apr<-c(1,0,0,0,0,1,1,0,0,0,0,0)
May<-c(0,0,0,0,1,0,0,0,0,0,0,0)
Jun<-c(1,0,0,1,0,1,0,0,0,0,0,0)
Jul<-c(0,0,0,1,0,0,0,0,0,0,0,0)
Aug<-c(0,1,0,0,0,0,0,1,0,0,0,0)
S<-c(0,0,0,0,0,0,0,0,0,0,0,1)
O<-c(1,0,0,0,0,0,0,0,0,1,0,0)
N<-c(0,1,1,0,0,0,0,0,0,0,0,0)
D<-c(0,0,0,0,0,0,0,0,1,0,0,0)
adjmat<-rbind(Jan,Fe,Mar,Apr,May,Jun,Jul,Aug,S,O,N,D)

ad = graph.adjacency(adjmat)
V(ad)$name<-c("jan","feb","mar","apr","may","june","july","aug","sep","oct","nov","dec")

plot.igraph(ad, layout=layout.fruchterman.reingold, vertex.size = 18,
       vertex.color="red",
       vertex.frame.color= "white",
       vertex.label.color = "black",
       vertex.label.family = "sans",
       edge.width=2,  
       edge.color="gray30")
       #plot.title="hihi")
       title(main="Months Having a Friday the 13th in the Same Year")
mtext("(1985-2015)",3)
