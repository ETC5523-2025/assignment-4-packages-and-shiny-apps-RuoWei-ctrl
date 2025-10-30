library(shiny)
library(ggplot2)
library(dplyr)
library(yarraWQ)

ui <- fluidPage(
  titlePanel("Yarra River Water Quality Explorer"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "param",
        label = "Choose parameter:",
        choices = sort(unique(yarra_wq$parameter)),
        selected = "pH"
      ),
      selectInput(
        inputId = "site",
        label = "Choose site (optional):",
        choices = c("All sites", sort(unique(yarra_wq$name))),
        selected = "All sites"
      )
    ),
    mainPanel(
      plotOutput("timeseriesPlot"),
      tags$p("Data source: yarra_wq (packaged with yarraWQ).")
    )
  )
)

server <- function(input, output, session) {
  output$timeseriesPlot <- renderPlot({
    # if "All sites", we don't filter by site_name
    chosen_site <- if (input$site == "All sites") NULL else input$site
    
    plot_yarra_metric(
      parameter_name = input$param,
      site_name = chosen_site
    )
  })
}

shinyApp(ui, server)
