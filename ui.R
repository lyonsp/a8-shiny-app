# Read in data
library(shiny)
library(plotly)

shinyUI(fluidPage(
  # Creates a title panel
  titlePanel("Compare Iris Sepal and Petal Lengths and Widths"),
  
  # Creates a sidebar panel
  sidebarLayout(sidebarPanel("Select x and y axis values to generate a comparison.",
                             # Creates a select box widget for the x axis
                             selectInput("selectx",
                                         label = "Select x Axis", 
                                         choices = list("Sepal Length" = "Sepal.Length",
                                                        "Sepal Width" = "Sepal.Width",
                                                        "Petal Length" = "Petal.Length",
                                                        "Petal Width" = "Petal.Width"),
                                         selected = "Sepal.Length"),
                             # Creates a select box widget for the y axis
                            selectInput("selecty", 
                                        label = "Select y Axis", 
                                        choices = list("Sepal Length" = "Sepal.Length",
                                                       "Sepal Width" = "Sepal.Width",
                                                       "Petal Length" = "Petal.Length",
                                                       "Petal Width" = "Petal.Width"),
                                        selected = "Sepal.Width")),
                # Creates a main panel where the graph is shown
                mainPanel("Iris Sepal and Petal Comparison Graph",
                          plotlyOutput("graph")))
))


