# D3 visualisation in R Shiny
# This is the user-interface definition of a Shiny web application.

appName <- "D3 visualisation"

dashboardPage(skin = "green",
              dashboardHeader(title = appName, 
                              tags$li(tags$a("Playgroung: D3 Data Visualisation (packages: r2d3, d3Network, d3r)"), 
                                      class="dropdown")),
              dashboardSidebar(collapsed = FALSE,
                               sidebarMenu(id = "tabs",
                                           menuItem("Barchart - d3r", tabName = "tab_Barchart", icon = icon("ellipsis-h")),
                                           menuItem("Graph - d3Network", tabName = "tab_Graph", icon = icon("snowflake-o")))),
              dashboardBody(#tags$head(HTML('<link rel="stylesheet" href="css/style.css" />')),
                tabItems(tabItem(tabName = "tab_Barchart", BarchartUI("Barchart")),
                         tabItem(tabName = "tab_Graph", GraphUI("Graph"))))
)