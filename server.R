library(shiny)
library(shinydashboard)

server <- function(input, output, session) {
  table_server("table_lable")
  graph_server("graph_data")
  box_server("box_lable")
  about_server("about_lable")
  contact_server("contact_lable")
}

#shinyApp(ui, server)
