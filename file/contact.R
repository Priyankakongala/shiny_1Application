contact_ui <- function(id) {
  ns <- NS(id)
  tabItem(tabName = "contact_data", p("Contact to 880xxxxxxx, and the mail id is priyanka.kxxxxxxxxxxxxxxxxxxxxx", style = "font-size:30px"))
  
  
}
contact_server<- function(id){
  
  moduleServer(id,function(input, output, session)   {
    ns <- NS(id)
    
  })
}