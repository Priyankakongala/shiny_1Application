library(shiny)
library(shinydashboard)


source("file/table_data.R")
source("file/graph.R")
source("file/box.R")
source("file/about.R")
source("file/contact.R")

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "SHINY APPLICATION", titleWidth = 300,
                    tags$li(class="dropdown",tags$a(href="https://www.youtube.com/", icon("youtube"), "Youtube", target="_blank")),
                    tags$li(class="dropdown",tags$a(href="https://mail.google.com/mail/u/0/#inbox",icon("envelope"),"Mail", target="blank"))),
    dashboardSidebar(
      sidebarMenu(
        
        menuItem("Table", tabName = "table_data", 
                 
                 icon=icon("table")),
        
        menuItem("Graph", tabName = "graph_data", 
                 
                 icon=icon("chart-simple", class = "fa-lg")),
        
        
        menuItem("Box", tabName = "box_data", 
                 
                 icon=icon("box")),
        
        menuItem("About", tabName = "about_data", 
                 
                 icon=icon("address-card", class = "fa-spin-90")
        ),
        tags$style(".fa-spin {text-align:center;}"),
        
        menuItem("Contact", tabName = "contact_data", 
                 
                 icon=icon("phone", class = "fa-pulse-90")
        ),
        tags$style(".mystyle {color:yellow;}")
        
      )
    ),
    dashboardBody(
      tabItems(
        table_ui("table_lable"),
        graph_ui("graph_data"),
        box_ui("box_lable"),
        about_ui("about_lable"),
        contact_ui("contact_lable")
      ))
  )
)

