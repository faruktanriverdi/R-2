
#| VENN ŞEMASI |  VENN DIAGRAM

#install.packages("VennDiagram")
#install.packages("gridExtra")

library(VennDiagram)
library(gridExtra)

setwd("C:\\Users\\faruk\\Desktop\\r-2")
library(readxl)
data_source<-read_xlsx("data_source.xlsx",sheet = 4 )

# kolonları ayrı ayrı karakter olarak alıyoruz, kesişimleri bulmak için
asli<- data_source$Asli
kerem<- data_source$Kerem
ali<- data_source$Ali

# venn diagramını oluşturacağız

venn <- venn.diagram(
  x = list(asli,kerem,ali),
  category.names = c("asli","kerem","ali"),
  filename = NULL,
  output=TRUE,
  fill=c("red","blue","orange")
  
)

grid.arrange(venn)

# venn diagram analizini yapacağız

#install.packages("gplots")
library(gplots)

#veriyi liste formatına çevirmek
liste<-list(asli,kerem,ali)

# analiz için venn diyagramını almak
itemslist<-venn(liste,show.plot=T)

#kesişim sayısını görmek
length(attributes(itemslist)$intersection)

#kesişen elamanları görmek için...
attributes(itemslist)$intersection



