  table_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "table_data", dataTableOutput(ns("table")))
}

table_server <- function(id){
  moduleServer(id,function(input, output, session){
  output$table <- renderDataTable({
    iris
  })
  reactive(iris)
  })
}