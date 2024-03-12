
#| RStudio STRING MANİPÜLASYONU | R Studio KARAKTER DÜZENLEME

string_yazi <- "Süreklilik bir sanat, ilerleyebilene faydası vardır,sanat faydası önemli." 
string_yazi

string_yazi_gsub <- gsub("faydası","yararı",string_yazi) # faydası yazan her kelimeyi  yararı kelimesine çevir. 
string_yazi_gsub

string_yazi_gsub2<- gsub("[a-d]","",string_yazi) # gsub a ile d dahil arasındaki harfleri boşluk ile değiştir.
string_yazi_gsub2

yazi_sub<- sub("sanat","SANAT",string_yazi) # sanat yazan sadece ilk kelimeyi  SANAT kelimesine değiştir. 
yazi_sub

#| sürüm güncelleme -> tools global options r version change ok diyip 

#install.packages("stringr")
library("stringr")

yazi<- "my name is faruk, my favorite spor is futboll"
yazi_stringr<- str_view(yazi,"[a-f]") # a ile f arasında ki harfleri bulur işaretler
yazi_stringr

grep("name",yazi) # name ifadesi yazi verisin de bulunuyor mu ? evet [1] 1

setwd("C:\\Users\\faruk\\Desktop\\r-2")
library(readxl)
boy_listesi <- read_xlsx("boy_listesi.xlsx")

boy_listesi$Boy <- gsub("cm","",boy_listesi$Boy)

boy_listesi$yeni <- gsub("[^[:digit:]]","",boy_listesi$Boy)
boy_listesi$yeni





