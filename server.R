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
source("analyzeIPLMatches2Teams.R")
source("analyzeIPLTeamPerfOverall.R")
shinyServer(function(input, output,session) {
    load("./batsmen.RData")
    IPLBatsmen <-b
    #analyzeIPLBatsmen(input$batsman,input$batsmanFunc)
    # Analyze and display batsmen plots
    output$batsmanPlot <- renderPlot({  
        #Load IPL Batsmen
       
        # Load all IPL batsmen
        analyzeIPLBatsmen(input$batsman,input$batsmanFunc)
        
    })
    
    output$bowlerPlot <- renderPlot({  
        #Load IPL Batsmen
        
        # Load all IPL batsmen
        analyzeIPLBowlers(input$bowler,input$bowlerFunc)
        
    })
    output$IPLMatchPlot <- renderPlot({  
        m <- strsplit(as.character(input$match),"-")
        print(m[[1]][1])
        print(m[[1]][2])
       
        teams <- c(m[[1]][1],m[[1]][2])
        print(teams)
        
        # Load all IPL batsmen
        output$selectTeam <- renderUI({ 
            selectInput('team', 'Choose team',choices=teams,selected=input$team)
        })
        print(input$team)
        otherTeam = setdiff(teams,input$team)
        print(otherTeam)
        analyzeIPLMatches(input$match,input$matchFunc,input$team,otherTeam)
        
    })
})
