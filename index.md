---
title       : Elementary Platform of Market Technical Analysis
subtitle    : Presentation for Course Project "Developing Data Products"
author      : Vladimir Sazontov
job         : 
framework   : io2012       # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The goal of the presentation

This presentation is a compiled (using **slidify**) R markdown document issued within the framework of the project for the course "Developing Data Products" introduced by Johns Hopkins University through Coursera. The main body of the project contains a brief description of shiny web 
application "Elementary Platform of Market Technical Analysis".

The shiny application is located here: 
https://vladimir-sazontov.shinyapps.io/stockTA

--- 

## Brief description

This application is aimed for the following tasks:

1. To load and visualize stock data provided by Yahoo Finance;

2. To apply some basic techincal indicators for this data.

The core calculations are performed using quantmod R-package. Detailed information can be
found here:
http://www.quantmod.com/

First, user can choose a stock by typing a specific symbol - for instance, GOOG (Google), AAPL (Apple), and GS (Goldman Sachs). The complete matchlist of symbols is here:
http://finance.yahoo.com/lookup

Then user can choose the type of data representaion, the color scheme of graphs, the date period and some parameters for Bollinger Bands.

---


The two main indicators are introduced in this (first) version of the product:

1. Relative Strength Index (RSI)

2. Bollinger Bands (BB)

These financial indicators are one of the most popular ones in technical trading.
Basic information about them is here:

https://en.wikipedia.org/wiki/Relative_strength_index

https://en.wikipedia.org/wiki/Bollinger_Bands


For Bollinger Bands user can select the type of averaging (SMA - simple moving average, 
EMA - exponential moving average, WMA - weighted moving average and DEMA - double exponential moving average). 

The second choice parameter is a period for average (from 5 to 100).
The width of BB is set to 2 standard deviations (calculated according to the type of average).


--- 

## Some final remarks

This version is just a draft for a more advanced platform which will include:

1. More traditional indicators for technical analysis

2. Opportunity to plot several graphs and calculate correlations between different stocks

3. User's indicators and back-testing of trading strategies

THANKS FOR ATTENTION!
