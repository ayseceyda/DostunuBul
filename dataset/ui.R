library(ggplot2)
library(shiny)
library(dplyr)

fluidPage(
  theme = "custom.css",
  rel="stylesheet",type="text/css",href="custom.css",
  tags$div(
  titlePanel(h1("Find Your Friend")),
  HTML('<div class="paw-print-1">
    <div class="pad large"></div>
    <div class="pad small-1"></div>
    <div class="pad small-2"></div>
    <div class="pad small-3"></div>
    <div class="pad small-4"></div>
</div>
    
<div class="paw-print-2">
    <div class="pad large"></div>
    <div class="pad small-1"></div>
    <div class="pad small-2"></div>
    <div class="pad small-3"></div>
    <div class="pad small-4"></div>
</div>    
    
<div class="paw-print-3">
    <div class="pad large"></div>
    <div class="pad small-1"></div>
    <div class="pad small-2"></div>
    <div class="pad small-3"></div>
    <div class="pad small-4"></div>
</div>

<div class="paw-print-4">
    <div class="pad large"></div>
    <div class="pad small-1"></div>
    <div class="pad small-2"></div>
    <div class="pad small-3"></div>
    <div class="pad small-4"></div>
</div>
    
<div class="paw-print-5">
    <div class="pad large"></div>
    <div class="pad small-1"></div>
    <div class="pad small-2"></div>
    <div class="pad small-3"></div>
    <div class="pad small-4"></div>
</div>'),
  hr(class="hr")
  ),
  sidebarLayout(
    sidebarPanel(width=3,class="side-color",
        
        selectInput("Species",
                    h4("Species"),
                    c("All",
                      unique(as.character(data$Species)))),
        
        selectInput("Temperament",
                    h4("Temperament"),
                    as.character(data$Temperament),multiple = TRUE,selectize = TRUE,selected = "Friendly"),
      
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
  
    mainPanel( class="main-panel",
      DT::dataTableOutput("table"),
      HTML('<div class="id-search">
        
  <label for="pet-id-page"><b> Search this pet by ID : </b></label>
  <input type="search" id="pet-id-page" name="pet-id-page" placeholder="SHD7438">
  <a href = "../pet.html" class="btn" type="button"> Search </a>

         </div>')
    )
  )
)
