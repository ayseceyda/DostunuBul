getwd()
setwd("..")
setwd("ucuncu_sinif")
setwd("wm")
setwd("project")

library("rvest")

url <- 'http://www.wikizero.biz/index.php?q=aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTGlzdF9vZl9kb2dfYnJlZWRz'
webpage <- read_html(url)
class(webpage)

#scrap breed
breed <- html_nodes(webpage,'.sortable td:nth-child(1)')
breed_data <- html_text(breed)
tail(breed_data)
head(breed_data)

#scrap origin 
origin <- html_nodes(webpage,'.sortable td:nth-child(2)')
origin_data <- html_text(origin)
tail(origin_data)
head(origin_data)

#scrap united kennel club
ukc <- html_nodes(webpage,'.sortable td:nth-child(9)')
ukc_data <- html_text(ukc)
tail(ukc_data)
head(ukc_data)

#show image,scrap image
#image <- html_nodes(webpage,'.sortable td:nth-child(10)')

#dalbohund <- readJPEG("dalbohund_pic.jpg",native=TRUE)
#plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
#rasterImage(dalbohund,0,0,1,1)

wikizero <- data.frame( Breed = breed_data,
                       Origin = origin_data,
                       Info = ukc_data
                       
)

attach(wikizero)
sum(is.na(wikizero))
dim(wikizero)

w <-subset(wikizero, Info!="Extinct") #remove extincts
w$Info <- as.character(w$Info)
w$Info[w$Info==""] <- "NA"
w$Info <- as.factor(w$Info)
x <-subset(w, Info!="NA") #remove na s
wikizero <- x
dim(wikizero)
rm(x)
rm(w)