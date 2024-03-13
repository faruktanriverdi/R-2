
#| Histogram | Bar grafik | Bar graph | sütun grafigi 
library(ggplot2)
library(readxl)
library(dplyr) # %>% pipe için paket kullanımı
library(tidyr) # pivot longer için paket kullanımı

setwd("C:\\Users\\faruk\\Desktop\\r-2")
veri <- read_xlsx("data_source.xlsx",sheet = 3)

colnames(veri)
names(veri)[2]<-"Ayse"

veri1<- veri %>%
  pivot_longer(
    cols = c("Ali","Ayse" ,"Hasan"  ,"Tunahan", "Huri"),
    names_to = "kisiler",
    values_to = "para"
  )

# eleman sıralarını belirleme
veri1$kisiler<-factor(veri1$kisiler,levels = c("Tunahan","Hasan","Ali","Huri","Ayse"))

ggplot(veri1,aes(x =kisiler,y = para))+
  geom_bar(stat = "identity",position = "dodge",aes(fill=kisiler))+
  ylim(0,100)+
  scale_fill_manual(values = c("Ali"="blue","Ayse"="red","Hasan"="purple","Tunahan"="orange","Huri"="pink"))+
  ggtitle("Bar Grafiği")+
  theme(
    panel.background = element_blank(),
    panel.grid = element_blank(),
    axis.line = element_line(),
    plot.title = element_text(hjust = 0.5),
    legend.position = "none") +            #legend kaldirma
  labs(x= "Kişilerimiz", y="Gelirler")
