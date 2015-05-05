shinyUI(fluidPage(
  titlePanel("Power Calculator"),  
  sidebarLayout(
        sidebarPanel(
          h3("Purpose"),
          p("The purpose of this applet is to provide the power
            when conducting a two sample t-test."),
          h3("Inputs Required"),
          p("• n is the total number of study participants."),
          p("• Delta (∂) is the effect size anticipated within the trial.
            Effect size is the estimate of the difference between two treatments"),
          p("• Alpha (α) is the probality of committing a type one error."),
          h3("Output"),
          p("Power is the probality of detecting a given difference.")
        ),
        mainPanel(
          h5("Please input the parameters:"),
          numericInput("n", 
            label = h4("Sample Size (n)"), 
            value = 1, min = 0, max = 10000000000),
          numericInput("delta", 
            label = h4("Delta (∂)"), 
            value = 0.5 , step = 0.1, min = 0, max = 10),
          numericInput("alpha",
            label = h4("Alpha (α)"),
            value = 0.05, step = 0.01, min = 0, max = 1),
          h4("Results"),
          div("Power = XXXX", style = "color:blue"),
          textOutput("text1"),
          width = 4),
  )
))


#users can type an input greater than the max but they cant use the arrow to go over