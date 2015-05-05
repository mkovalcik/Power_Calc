source("power_Calc.R")
shinyServer(function(input, output){
  #output$delta
  power <- reactive({
    Power.calc(input$delta, input$alpha, input$n)   
  })
  output$text1 <- renderText({
    if(input$n %% 2 == 0){
      paste("A two sample t-test conducted with two groups of size", input$n/2, ", an effect size of", input$delta,
          ", and an alpha level of", input$alpha, "will yield a power of XXXX")
    }
    else{ 
      paste("A two sample t-test conducted with a group of size", (input$n-1)/2, "and a 
            group of size", (input$n+1)/2,", an effect size of", input$delta, "and an alpha level of", input$alpha, 
            "will yield a power of XXXX")
    }
  })
  
})