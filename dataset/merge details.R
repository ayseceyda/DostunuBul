getwd()
setwd("..")
setwd("ucuncu_sinif")
setwd("wm")
setwd("project")
setwd("blistler")
setwd("wikizero")

wikizero <- read.csv("wikizero.csv")
blist <- read.csv("blist.csv")
wikiblist <- read.csv("wikiblist.csv")

wikizero$Species <- wikizero$Breed
wikiblist <- wikiblist[,-(1)]    

wikiblist <- merge(wikizero,blist,by="Species")
sum(is.na(wikiblist))

data <- read.csv("wikiblistgwclife.csv")

sum(is.na(data))
levels(data$Good_With_Children)
levels(data$Hypoallergenic)
levels(data$Activity.Level)
levels(data$Life.Expectancy)
levels(data$Size)

