library(shiny)
library(ggplot2)

datasets <- c("economics", "faithfuld", "seals")
ui <- fluidPage(
  verbatimTextOutput("summary"),
  textOutput("morning"),
  verbatimTextOutput("ttest"),
  verbatimTextOutput("linm")

)

server <- function(input, output, session) {
 output$summary <-  renderPrint(summary(mtcars))
 output$morning <-  renderText("Good morning!")
 output$ttest   <-  renderPrint(t.test(1:5, 2:6))
 output$linm    <-  renderPrint(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui, server)
