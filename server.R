library(shiny)
attach(mtcars)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  propInput <- reactive({
    switch(input$property,
           "Miles/Gallon" = mpg,
           "Number of cylinders" = cyl,
           "Displacement" = disp,
           "Gross horsepower"=hp,
           "Rear axle ratio"=drat,
           "Weight"=wt,
           "1/4 Mile time"=qsec,
           "Number of forward gears" = gear,
           "Number of carburetors" = carb           
           )
  })
  
  # Return the requested dataset
  orderInput <- reactive({
    switch(input$order,
          "Ascending" = FALSE,
          "Descending" = TRUE
    )
  })
  # Generate a summary of the dataset
  output$intro0 <- renderText({"--------- Nomenclature ---------"})
  output$intro1 <- renderText({"mpg   =  Miles/(US) gallon"})
  output$intro2 <- renderText({"cyl   =  Number of cylinders"})
  output$intro3 <- renderText({"disp  =  Displacement (cu.in.)"})
  output$intro4 <- renderText({"hp    =  Gross horsepower"})
  output$intro5 <- renderText({"drat  =  Rear axle ratio"})
  output$intro6 <- renderText({"wt    =  Weight (lb/1000)"})
  output$intro7 <- renderText({"qsec  =  1/4 mile time"})
  output$intro8 <- renderText({"vs	  =  V/S"})
  output$intro9 <- renderText({"am    =  Transmission (0 = automatic, 1 = manual)"})
  output$intro10 <- renderText({"gear  =  Number of forward gears"})
  output$intro11 <- renderText({"carb  =  Number of carburetors"})
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(mtcars[order(propInput(),decreasing = orderInput()),], n = input$obs)
  })
})
