
#| RStudio ÇİZGİ GRAFİĞİ | R Studio LINE GRAPH | LINE PLOT

a<-1:10
b<-10:19

#install.packages("ggplot2")
library(ggplot2)

data1<- data.frame(a,b)

ggplot(data1,aes(x =a ,y=b)) +     #ggplot kullanımı
  geom_line(size=1.5,color="red")

#ggplot kullanımı data import
library(readxl)
setwd("C:\\Users\\faruk\\Desktop\\r-2")

#line1<-read_xlsx("data_source.xlsx",sheet = "1")
line1<-read_xlsx("data_source.xlsx",sheet = "line1")

colnames(line1)
ggplot(line1,aes(x =birinci_kolon,y = ikinci_kolon )) +
  geom_line()

#install.packages("tidyr")
library(dplyr)
library(tidyr)
line2<-read_xlsx("data_source.xlsx",sheet = "line2")
colnames(line2)
line2<-line2 %>% 
  pivot_longer(
    cols=c("0.2","0.4","0.6","0.8","1","1.6","1.8","2"),
    names_to = "tür",
    values_to="değer")
names(line2)[1]<-"Tur"
ggplot(line2,aes(x =tür ,y =değer,group=Tur,color=Tur))+
  geom_line(size=1.5)+
  scale_color_manual(values = c("Elma"="blue","Armut"="red","Kiraz"="orange","Muz"="purple"))+
  labs(x="Kind",y="Values")+ggtitle("İlk Plot")+
  theme(
    panel.grid = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.line = element_line(),
    panel.background = element_blank(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none"
  )









