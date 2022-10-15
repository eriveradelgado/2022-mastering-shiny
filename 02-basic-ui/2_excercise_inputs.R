library(shiny)
library(ggplot2)

datasets <- c("economics", "faithfuld", "seals")
ui <- fluidPage(
  textInput("name", "", label = "2.1", placeholder = "Your Name"),
  sliderInput("slider", label = "2.2",
              min = as.Date("2020-09-16"),
              max = as.Date("2020-09-23"),
              value = as.Date("2020-09-17")
              ),
  sliderInput("slider", label = "2.3",
              min = 0,
              max = 100,
              value = 0,
              step = 5,
              animate = animationOptions(
                interval = 1000,
                loop = FALSE,
                playButton = NULL,
                pauseButton = NULL
              )
  ),
  selectInput("selectit", label = "2.4",
              choices = list(
                `Warm` = list("Pepper", "Paprika", "Cayenne"),
                `Woody` = list("Oregano", "Bay", "Thyme", "Rosemary"),
                `Fragrant` = list("Cloves", "Cardamom", "Cinnamon", "Star Anise")
                )
              )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
