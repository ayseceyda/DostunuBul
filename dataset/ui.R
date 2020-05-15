library(ggplot2)
library(shiny)
library(dplyr)

fluidPage(theme = "custom.css",
  titlePanel(h3("Find Your Best Match Dog Friend")),
  rel="stylesheet",type="text/css",href="custom.css",
  sidebarLayout(
    sidebarPanel(width=3,
     
               selectInput("Temperament",
                           h4("Temperament"),
                           as.character(data$Temperament),multiple = TRUE,selectize = TRUE),
        helpText("Please choose attributes of your dog friend"),
               selectInput("Activity.Level",
                           h4("Activity Level"),
                           c("All",
                             unique(as.character(data$Activity.Level)))),
               
        helpText("You can choose the activity level of your dog friend"),
      
               selectInput("Hypoallergenic",
                           h4("Hypoallergenic"),
                           c("All",
                             unique(as.character(data$Hypoallergenic)))),

        helpText("Hypoallergenic case matters for you?"),

               selectInput("Good_With_Children",
                           h4("Good With Children"),
                           c("All",
                             unique(as.character(data$Good_With_Children)))),

        helpText("Children case matters for you?"),

               selectInput("Info",
                           h4("Group"),
                           c("All",
                             unique(as.character(data$Info)))),

        helpText("You can choose the group of your dog friend"),

               selectInput("Size",
                           h4("Size"),
                           c("All",
                             unique(as.character(data$Size)))),

        helpText("You can choose the size of your dog friend")

    ),
  
    mainPanel(
      DT::dataTableOutput("table")
    )
  )
)
