GraphUI <- function(id) {
  ns <- NS(id)
  fluidPage(
    fluidRow(
      htmlOutput(ns("frame")))
  )
}

Graph <- function(input, output, session) {
  output$frame <- renderUI({
    url <- paste0("http://0.0.0.0:8000/network2/index.html")
    my_test <- tags$iframe(src=url, height=600, width=1100)
    print(my_test)
    my_test
  })
  
  
}