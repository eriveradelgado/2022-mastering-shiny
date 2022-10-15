library(shiny)
ui <- fluidPage(
  dataTableOutput("table")
)
server <- function(input, output, session) {
  output$table <- renderDataTable(mtcars, options = list(pageLength = 5,
                                                         search = list(smart = "False")))
}
shinyApp(ui, server)
