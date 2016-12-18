#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: server.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
library(shiny)
library(yorkr)
library(rpart)
library(rpart.plot)


# Source files

source("definitions.R")
source("funcs.R")
source("analyzeIPLBatsmen.R")



shinyServer(function(input, output,session) {
   
    # Analyze and display batsmen plots
    output$batsmanPlot <- renderPlot({  
        getwd()
        #setwd("C:/software/cricket-package/cricsheet/googly")
        load("./batsmen.RData")
        IPLBatsmen <-b
        # Dynamic list update. Set the selected so that it does not flip to the first!!
        output$batsmanList = renderUI({
            output$batsmanFunctionList = renderUI({
                #selectInput('batsmanFunc', 'Choose chart type',choices=IPLBatsmenFuncs,selected=input$batsmanFunc,
                # selectize=FALSE, size=12)
                selectInput('batsmanFunc', 'Choose function',choices=IPLBatsmenFuncs,selected=input$batsmanFunc)
            })
            #selectInput('batsman', 'Choose batsman',choices=IPLBatsmen,selected=input$batsman)
            selectInput('batsman', 'Choose chart type',choices=IPLBatsmen,selected=input$batsman,
             selectize=FALSE, size=20)
        })

        
        
        print(input$batsmanFunc)
        # Call the plots for the batsman
        analyzeIPLBatsmen(input$batsman,input$batsmanFunc)
        
    })
    
    
    
    
})
