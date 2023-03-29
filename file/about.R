about_ui <- function(id){
  ns <- NS(id)
  tabItem(tabName = "about_data", p("This is about the shiny application this will use in the task bases of the program",style = "font-size:30px"))
}

about_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- NS(id)
    
  })
}