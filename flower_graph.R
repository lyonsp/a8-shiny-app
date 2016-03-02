library(plotly)

# graph_flowers function takes in a dataframe and an xaxis and yaxis selection
graph_flowers <- function(df, xaxis, yaxis) {
    # Builds an interactive graph which compares iris sepal and petal widths and lengths.
    # Color is determined by iris species.
    plot_ly(df,
            x = eval(parse(text = xaxis)), 
            y = eval(parse(text = yaxis)), 
            color = df$Species,
            mode = "markers") %>% 
    # Sets the layout of the graph by giving the graph and axes titles.
    layout(title = "Iris Sepal and Petal Comparisons",
           xaxis = list(title = xaxis),
           yaxis = list(title = yaxis)
    ) %>% 
    return()
}
