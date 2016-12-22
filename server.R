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
source("analyzeIPLBowlers.R")
shinyServer(function(input, output,session) {
 
    # Analyze and display batsmen plots
    output$batsmanPlot <- renderPlot({  
        #Load IPL Batsmen
       
        # Load all IPL batsmen
        load("./batsmen.RData")
        IPLBatsmen <-b
        # Dynamic list update. Set the selected so that it does not flip to the first!!
        output$batsmanList = renderUI({
            output$batsmanFunctionList = renderUI({
                selectInput('batsmanFunc', 'Choose function',choices=IPLBatsmanFuncs,selected=input$batsmanFunc)
            })
            selectInput('batsman', 'Choose chart type',choices=IPLBatsmen,selected=input$batsman,
             selectize=FALSE, size=20)
        })

        print(input$batsmanFunc)
        # Call the plots for the batsman
        analyzeIPLBatsmen(input$batsman,input$batsmanFunc)
        
    })
    
    # Analyze and display bowler's plots
    output$bowlerPlot <- renderPlot({  
        load("./bowler.RData")
        IPLBowlers <-b
        
        # Render dynamic UI
        output$bowlerFunctionList = renderUI({
            selectInput('bowlerFunc', 'Choose function',choices=IPLBowlerFuncs,selected=input$bowlerFunc)
        })
        output$bowlerList = renderUI({
            selectInput('bowler', 'Choose chart type',choices=IPLBowlers,selected=input$bowler,
                        selectize=FALSE, size=20)
        })
        
        analyzeIPLBowlers(input$bowler,input$bowlerFunc)
        
        
    })
    
    
})
