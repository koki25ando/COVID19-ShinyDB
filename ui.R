#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#


# Define UI for application that draws a histogram

header <- dashboardHeader(
  title = "COVID19"
)

sidebar = dashboardSidebar(
  sidebarMenu(
    menuItem("Data Visualization", tabName = "data_visualization", icon = icon("chart-pie")),
    menuItem("Data Table", tabName = "data_table", icon = icon("table")),
    menuItem("Information", tabName = "information", icon = icon("info"))
  )
  
)

body = dashboardBody(
  tabItems(
    tabItem(
      tabName = "data_visualization",
      fluidRow(
        box(
          title = "年代・性別",
          width = 6, height = 450,
          plotOutput(outputId = "age_gender")
        ),
        box(
          title = "感染者数の推移",
          width = 6, height = 450,
          plotOutput(outputId = "Infected_num")
        )
      )
     ),
    tabItem(
      tabName = 'data_table'
    )
))

shinyUIui <- dashboardPage(header, sidebar, body)