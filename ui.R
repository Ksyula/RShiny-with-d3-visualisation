# D3 visualisation in R Shiny
# This is the user-interface definition of a Shiny web application.

appName <- "D3 visualisation"

dashboardPage(skin = "green",
              dashboardHeader(title = appName,
                              tags$li("Test", class="dropdown")),
              dashboardSidebar(collapsed = FALSE,
                               sidebarMenu(id = "tabs",
                                           menuItem("Barchart - r2d3", tabName = "tab_Barchart", icon = icon("ellipsis-h")),
                                           menuItem("Graph - d3Network", tabName = "tab_Graph", icon = icon("snowflake-o")))),
              dashboardBody(tabItems(tabItem(tabName = "tab_Barchart", BarchartUI("Barchart")),
                                     tabItem(tabName = "tab_Graph", GraphUI("Graph"))))
)