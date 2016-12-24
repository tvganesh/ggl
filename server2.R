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
source("analyzeIPLMatches.R")
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
    
    # Analyze and display IPL matches
    output$IPLMatchPlot <- renderPlot({  
        
        a <-list.files("IPLmatches/")
        IPLMatches <- gsub(".RData","",a)
        # Render dynamic UI
        output$IPLMatchFunctionList = renderUI({
            selectInput('matchFunc', 'Choose function',choices=IPLMatchFuncs,selected=input$matchFunc)
        })
        output$matchList = renderUI({
            selectInput('match', 'Choose chart type',choices=IPLMatches,selected=input$match,
                        selectize=FALSE, size=20)
                        
        })
        
        print(input$match)
        m <- strsplit(as.character(input$match),"-")
        print(m[[1]][1])
        print(m[[1]][2])
        print(input$matchFunc)
        teams <- c(m[[1]][1],m[[1]][2])
        output$IPLTeam = renderUI({
            selectInput('team', 'Choose team',choices=teams,selected=input$team)
        })
        print(input$team)
        
        # Take the set difference  to get the opposition
        otherTeam = setdiff(teams,input$team)
        print(otherTeam)
        analyzeIPLMatches(input$match,input$matchFunc,input$team,otherTeam)
        
    })
    # Analyze all matches between 2 IPL teams
 
   
    
})
