library(shiny)
library(shinythemes)
library(ggplot2)
library(dplyr)
library(yarraWQ)

ui <- fluidPage(
  theme = shinythemes::shinytheme("flatly"),
  titlePanel("Yarra River Water Quality Explorer"),

  sidebarLayout(
    sidebarPanel(
      h4("Controls"),
      helpText("Select a water quality parameter and monitoring site to explore trends over time."),

      selectInput(
        inputId = "param",
        label = "Water Quality Parameter:",
        choices = sort(unique(yarra_wq$parameter)),
        selected = "pH"
      ),

      helpText("Optional: choose a specific site. 'All sites' shows combined trends."),

      selectInput(
        inputId = "site",
        label = "Monitoring Site:",
        choices = c("All sites", sort(unique(yarra_wq$name))),
        selected = "All sites"
      ),

      hr(),
      p("Field descriptions:"),
      tags$ul(
        tags$li("Parameter – water quality variable (e.g. pH, Temperature, DO)"),
        tags$li("Value – recorded measurement"),
        tags$li("Date – sampling date and time")
      )
    ),

    mainPanel(
      plotOutput("trendPlot"),
      hr(),
      h4("How to interpret this plot"),
      p("The line shows how the selected parameter changes over time.
     The x-axis represents the sampling date, and the y-axis is the measured value.
     If you choose 'All sites', it displays an overall average trend across all monitoring locations."),
      hr(),
      p("Data source: yarra_wq (packaged within yarraWQ)."),
      p("Use the selectors above to explore trends for different water quality parameters
     and monitoring sites. The patterns you see here — such as relatively stable pH levels
     over time or higher variability at certain sites — reflect the same conclusions
     discussed in the analysis report.")
    )
  )
)

server <- function(input, output, session) {
  data("yarra_wq", package = "yarraWQ")

  output$trendPlot <- renderPlot({
    chosen_site <- if (input$site == "All sites") NULL else input$site

    filtered <- yarra_wq %>%
      filter(parameter == input$param) %>%
      { if (!is.null(chosen_site)) filter(., name == chosen_site) else . }

    ggplot(filtered, aes(x = date, y = value, color = name)) +
      geom_line(alpha = 0.8) +
      labs(
        title = paste("Trend of", input$param, "in Yarra River"),
        x = "Date",
        y = "Measured Value"
      ) +
      theme_minimal(base_size = 13) +
      theme(legend.position = "bottom")
  })
}

shinyApp(ui, server)
