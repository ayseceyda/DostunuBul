#features
data$Name <- randomNames(128, which.names="first") #name
data$Breed <- rep("Dog", times = 128) #breed
data$Height <- floor(runif(128, min=15, max=110)) #height
data$Weight <- floor(runif(128, min=3, max=35)) #weight
data$Sex <- sample(c("Male", "Female"), 128, T) #sex
data$SpecialConditions <- sample(c("-", "Explanations"), 128, T, prob = c(0.8,0.2)) #spec cond
data$Neutered <- sample(c("Yes", "No"), 128, T, prob = c(0.8,0.2)) #neuter
data$From <- sample(c("SHELTER", "OWNER"), 128, T) #from
data$Age <- sample(1:13,128,replace=T) #age
data$Pregnancy <- ifelse(data$Neutered == "No" & data$Sex == "Female", "Yes", "No") #pregnancy
data$Adopted <- sample(c("Yes", "No"), 128, T, prob = c(0.3,0.7)) #adopt
data$HomeFoster <- sample(c("Yes", "No"), 128, T, prob = c(0.4,0.6)) #hf
data$RemoteFoster <- sample(c("Yes", "No"), 128, T, prob = c(0.8,0.2)) #rf
data$Caretaker <- sample(c("Yes", "No"), 128, T, prob = c(0.2,0.8)) #ct

#stats
data$AdoptStat <- ifelse(data$Adopted == "Yes", "NotReadyA", "ReadyA")
data$HomeFosterStat <- ifelse(data$AdoptStat == "ReadyA" & data$HomeFoster == "No", "ReadyHF", "NotReadyHF")
data$RemoteFosterStat <- ifelse(data$HomeFosterStat == "ReadyHF" & data$RemoteFoster == "No","ReadyRF", "NotReadyRF")
data$CaretakerStat <- ifelse(data$From == "OWNER" & data$Caretaker == "No", "ReadyCT", "NotReadyCT")

#create id
data$UniqueNum <- sample(1000:4000,128,replace=F) #id unique num
data$FromInfo <- substr(data$From, 1, 2) #frominfo
data$SpeciesInfo <- substr(data$Species, 0, 1) #specinfo
data$ID <- paste(data$FromInfo,data$SpeciesInfo,data$UniqueNum) #get together id related columns
data$ID <- gsub(" ", "", data$ID, fixed = TRUE) #remove whitespaces from ID

#ready df -> all ready
#ready <- filter(data, HomeFosterStatus == "ReadyHF"| RemoteFosterStat == "ReadyRF"| AdoptStat == "ReadyA"| CaretakerStat == "ReadyCT")

#write.csv(data2,"user.csv")