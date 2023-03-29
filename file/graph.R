graph_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "graph_data", plotOutput(ns("plot")))
}

graph_server <- function(id){
  moduleServer(id,function(input, output, session){
  output$plot <- renderPlot({
    plot(iris$Sepal.Length, iris$Sepal.Width)
  })
  })
}