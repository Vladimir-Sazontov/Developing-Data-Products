# server.R

library(quantmod)
library(TTR)
source("helpers.R")

shinyServer(function(input, output, session) {

  output$plot <- renderPlot({
    data <- getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
    
    chartSeries(data,
               type = input$type,
               subset = NULL,
               show.grid = TRUE,
               name = NULL,
               time.scale = NULL,
               log.scale = FALSE,
               TA = c(addVo(), addRSI()),
               TAsep =';',
               line.type = "l",
               bar.type = "ohlc",
               theme = chartTheme(input$chartTheme),
               layout = NA,
               major.ticks = 'auto', minor.ticks = TRUE,
               yrange=NULL,
               plot=TRUE,
               multi.col = FALSE)
        
    addBBands(n = input$perMA, sd = 2, maType = input$typeMA, draw = 'bands', on = -1)
    
   
    
  }, height = 800, width = 800)
  
})