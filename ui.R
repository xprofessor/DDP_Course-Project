#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Junda's Homemade BMI Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("height",
                   h3("Your Height (cm):"),
                   min = 100,
                   max = 250,
                   value = 180,step = 1),

      sliderInput("weight",
                  h3("Your Weight (Kg):"),
                  min = 50,
                  max = 200,
                  value = 100,step = 1)
    ),
    
    # show BMI
    mainPanel(
       h2("This is your BMI:"),
       h1(textOutput("text1")),
       h3("Reference:"),
       h3("18.5 - is considered very underweight and possibly malnourished."),
       h3("18.5-24.9 - is considered a healthy weight range for young and middle-aged adults."),
       h3("25.0 to 29.9 - is considered overweight."),
       h3("30 and over is considered obese.")
    )
  )
))
