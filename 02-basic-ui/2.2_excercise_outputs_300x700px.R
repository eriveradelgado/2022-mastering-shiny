library(shiny)
ui <- fluidPage(
  plotOutput("plot", width = "700px",height = "300px", click = "scatterplot of five random numbers")
)
server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), res = 96)
}
shinyApp(ui, server)
