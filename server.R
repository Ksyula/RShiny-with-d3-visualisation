# Shiny Development Playground with D3 visualisation 
# This is the server logic for a Shiny web application.

shinyServer(function(input, output, session) {
  callModule(Barchart, "Barchart")
  callModule(Graph, "Graph")
  
})