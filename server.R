library(shiny)
library(plotly)

# Set working directory and source flower_graph function
source("flower_graph.R")

# Renames iris data frame
flower_data <- iris


shinyServer(function(input, output) {
  # Generates a graph, which is presented using ui.R
  output$graph <- renderPlotly({
    # Calls the graph_flowers function using user's selections
    graph_flowers(flower_data, input$selectx, input$selecty)
  })
})