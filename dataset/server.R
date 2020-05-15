library(ggplot2)
library(shiny)
library(dplyr)

function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({

    if (input$Temperament != "All") {
      data <- data[data$Temperament == input$Temperament,]
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
    if (input$Info != "All") {
      data <- data[data$Info == input$Info,]
    }
    if (input$Size != "All") {
      data <- data[data$Size == input$Size,]
    }
    data
  }))

}