library(ggplot2)
library(shiny)
library(dplyr)

fluidPage(theme = "custom.css",
  titlePanel(h1("Find Your Friend")),
  rel="stylesheet",type="text/css",href="custom.css",
  sidebarLayout(
    sidebarPanel(width=3,class="side-color",
        
        selectInput("Species",
                    h4("Species"),
                    c("All",
                      unique(as.character(data$Species)))),
        
        selectInput("Temperament",
                    h4("Temperament"),
                    as.character(data$Temperament),multiple = TRUE,selectize = TRUE),
      
        selectInput("Activity.Level",
                    h4("Activity Level"),
                    c("All",
                      unique(as.character(data$Activity.Level)))),
        
        selectInput("Hypoallergenic",
                    h4("Hypoallergenic"),
                    c("All",
                      unique(as.character(data$Hypoallergenic)))),
      
        selectInput("From",
                    h4("From"),
                    c("All",
                      unique(as.character(data$From)))),
        
        selectInput("Adopted",
                    h4("Adopted"),
                    c("All",
                      unique(as.character(data$Adopted)))),
        
        selectInput("HomeFoster",
                    h4("Home Fostered"),
                    c("All",
                      unique(as.character(data$HomeFoster)))),
        
        selectInput("RemoteFoster",
                    h4("Remote Fostered"),
                    c("All",
                      unique(as.character(data$RemoteFoster)))),
        
        selectInput("Caretaker",
                    h4("Caretakered"),
                    c("All",
                      unique(as.character(data$Caretaker)))),
        
        selectInput("Neutered",
                    h4("Neutered"),
                    c("All",
                      unique(as.character(data$Neutered)))),
        

               selectInput("Good_With_Children",
                           h4("Good With Children"),
                           c("All",
                             unique(as.character(data$Good_With_Children)))),


               selectInput("Info",
                           h4("Group"),
                           c("All",
                             unique(as.character(data$Info)))),


               selectInput("Size",
                           h4("Size"),
                           c("All",
                             unique(as.character(data$Size))))

    ),
  
    mainPanel(
      DT::dataTableOutput("table")
    )
  )
)
