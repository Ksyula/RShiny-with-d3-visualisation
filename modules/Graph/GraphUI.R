GraphUI <- function(id) {
  ns <- NS(id)
    # Tab title
    fluidPage(
      # fluidRow(titlePanel('d3Network Shiny Example'),
      #                  p('This is an example of using d3Network')),
      # fluidRow(# Slider input for node opacity
      #                   sliderInput(ns('slider'), label = 'Choose node opacity', min = 0, max = 1, step = 0.01, value = 0.5),
                        htmlOutput(ns('networkPlot'))
    )
}

Graph <- function(input, output, session) {
    output$networkPlot <- renderPrint({
          linkDf <- data.frame(source = c(1, 1, 2, 2, 2, 3), target = c(0, 4, 3, 4, 0, 5), value = c(2, 4, 1, 3, 3, 50))
          nodeDf2 <- data.frame(name = c("A", "B", "C", "D", "E", "F"), group = c(1,1,2,3,2,1), ID = 1:6)
          d3ForceNetwork(Links = linkDf, Nodes = nodeDf2, Source = "source",
                           Target = "target", Value = "value",
                           NodeID = "name", Group = "group",
                           width = 400, height = 500,
                           opacity = 0.8, standAlone = FALSE,
                           parentElement = '#shiny-tab-tab_Graph')
          # shiny-tab-tab_Graph
  })
}