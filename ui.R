library(shiny)

shinyUI(fluidPage(
  titlePanel("Elementary Platform of Market Technical Analysis"),
  
  sidebarLayout(
    sidebarPanel(
      
            
      helpText("Select a stock. The data is provided by Yahoo Finance."),
    
      textInput("symb", "Symbol", "SPY"),
      
          
            
      selectInput("type", 
                  label = "Choose a type of representation",
                  choices =  c("candlesticks", "matchsticks", "bars","line"),
                  selected = "candlesticks"),
      
      selectInput("chartTheme", 
                  label = "Select color cheme", 
                  choices = c("black", "white"), selected = "black"),
      
      selectInput("typeMA", 
                  label = "Select type of Moving Average", 
                  choices = c("SMA", "EMA", "WMA", "DEMA"), selected = "SMA"),
      
          
      numericInput("perMA", label = "Period for Moving Average", 
                   min = 5, max = 100, value = 10),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2015-01-01", 
        end = as.character(Sys.Date()))
   
    ),
    
    mainPanel(plotOutput("plot"))
  )
))