library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Car purchasing helper"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    selectInput("property", "Choose a property you are interesting in ranking:", 
                choices = c("Miles/Gallon", "Number of cylinders", "Displacement","Gross horsepower","Rear axle ratio", "Weight","1/4 Mile time", "Number of forward gears","Number of carburetors")),
    selectInput("order", "Choose order:",
                choices = c("Ascending","Descending")),
    numericInput("obs", "Number of observations to view: (1-32)", 10),
    textOutput("intro0"),
    textOutput("intro1"),
    textOutput("intro2"),
    textOutput("intro3"),
    textOutput("intro4"),
    textOutput("intro5"),
    textOutput("intro6"),
    textOutput("intro7"),
    textOutput("intro8"),
    textOutput("intro9"),
    textOutput("intro10"),
    textOutput("intro11")
    ),
  
  # Show a summary of the dataset and an HTML table with the requested
  # number of observations
  mainPanel(
    tableOutput("view")
    
  )
))