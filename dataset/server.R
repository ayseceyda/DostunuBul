library(ggplot2)
library(shiny)
library(dplyr)

function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({

    if (input$Temperament != "All") {
      data <- data[data$Temperament == input$Temperament,]
    }
    if (input$Species != "All") {
      data <- data[data$Species == input$Species,]
    }
    if (input$From != "All") {
      data <- data[data$From == input$From,]
    }
    if (input$Hypoallergenic != "All") {
      data <- data[data$Hypoallergenic == input$Hypoallergenic,]
    }
    if (input$Good_With_Children != "All") {
      data <- data[data$Good_With_Children == input$Good_With_Children,]
    }
    if (input$Activity.Level != "All") {
      data <- data[data$Activity.Level == input$Activity.Level,]
    }
    if (input$Neutered != "All") {
      data <- data[data$Neutered == input$Neutered,]
    }
    if (input$Adopted != "All") {
      data <- data[data$Adopted == input$Adopted,]
    }
    if (input$HomeFoster != "All") {
      data <- data[data$HomeFoster == input$HomeFoster,]
    }
    if (input$RemoteFoster != "All") {
      data <- data[data$RemoteFoster == input$RemoteFoster,]
    }
    if (input$Caretaker != "All") {
      data <- data[data$Caretaker == input$Caretaker,]
    }
    if (input$Info != "All") {
      data <- data[data$Info == input$Info,]
    }
    if (input$Size != "All") {
      data <- data[data$Size == input$Size,]
    }
    data
  }))

}