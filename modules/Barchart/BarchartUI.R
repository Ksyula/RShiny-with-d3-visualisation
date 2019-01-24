
BarchartUI <- function(id) {
  ns <- NS(id)
  fluidPage(fluidRow(sliderInput(ns("bar_max"), label = "Max:", min = 0, max = 1, value = 1, step = 0.05),
                     verbatimTextOutput(ns("selected"))),
            fluidRow(d3Output(ns("d3_barchart"))))
}

Barchart <- function(input, output, session) {
  
  output$d3_barchart <- renderD3({
    r2d3(runif(5, 0, input$bar_max), script = "bar1.js")
  })
  
  bar_number <- eventReactive(input$bar_clicked(), { as.numeric(req(input$bar_clicked()))})
  
  observeEvent(input$bar_clicked, {
    output$selected <- renderText({
      # By default at the startup of the app input$bar_clicked = NULL
      bar_number <- as.numeric(rec(input$bar_clicked)) # rec() is used to prevent errors. Here req() stops reactivity if the value of the variable passed as an argument is not valid
      if (bar_number > 0)
        bar_number()
    })
  })

  
}