#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$age_gender <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    data %>% 
      ggplot(aes(年代)) +
      geom_bar(aes(fill = factor(性別)), stat = "count", position = "dodge") + 
      theme_gray(base_family = "HiraKakuPro-W3") +
      scale_fill_manual(values = c("grey", "red", "blue"))
  })
  
  output$Infected_num = renderPlot({
    data %>% 
      count(Date) %>% 
      mutate(Case_cumulative = cumsum(n)) %>% 
      ggplot(aes(Date, Case_cumulative)) + 
      geom_line() +
      geom_bar(stat = "identity")
  })
  
})
