#########################################################################################################
#
# Title :  Googly - An interactive app to analyze IPL Players, teams and matches 
# Designed and developed by: Tinniam V Ganesh
# Date : 24 Dec 2016
# File: ui.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
source("data.R")

shinyUI(navbarPage("Googly : yorkr analyzes IPL!",
                   # Batsman tab
                  
                   tabPanel("IPL batsman",
                            sidebarPanel(
                                selectInput('batsmanFunc', 'Select function', IPLBatsmanFuncs),
                                selectInput('batsman', 'Select batsman', IPLBatsmen,selectize=FALSE, size=20)
                                
                                
                            ),
                            mainPanel(
                                plotOutput('batsmanPlot')
                            )
                            
                            
                   ),
                   # Bowlers tab
                   # Bowlers tab
                   tabPanel("IPL bowlers",
                            # Application title
                            headerPanel('Analyze IPL batsman performances'),
                            
                            sidebarPanel(
                                selectInput('bowlerFunc', 'Select function', IPLBowlerFuncs),
                                selectInput('bowler', 'Select IPL bowler', IPLBowlers,selectize=FALSE, size=20)
                                
                                
                            ),
                            mainPanel(
                                plotOutput('bowlerPlot')
                            )
                            
                            
                   ),
                   # Analyze IPL matches
                   tabPanel("IPL matches",
                            # Application title
                            headerPanel('Analyze an IPL match'),
                            
                            sidebarPanel(
                                selectInput('matchFunc', 'Select match function', IPLMatchFuncs),
                                selectInput('match', 'Select IPL match ', IPLMatches,selectize=FALSE, size=20),
                                uiOutput("selectTeam")
                                
                                
                            ),
                            mainPanel(
                                plotOutput('IPLMatchPlot')
                            )
                            
                   ),
                   
                   # Analyze 2 Teams IPL matches
                   tabPanel("Head to head",
                            
                            headerPanel('Head-to-head between 2 IPL teams'),
                            
                            sidebarPanel(
                                selectInput('matches2TeamFunc', 'Select function', IPLMatches2TeamsFuncs),
                                selectInput('matches', 'Select matches', IPLMatches2Teams,selectize=FALSE, size=20),
                                uiOutput("selectTeam2")
                                
                                
                            ),
                            mainPanel(
                                plotOutput('IPLMatch2TeamsPlot')
                            ) 
                            
                   ),
                   
                   # Analyze IPL Team Overall Perf
                   tabPanel("Overall Performance",
                           
                            headerPanel("Analyze IPL team's overall performance"),
                            
                            sidebarPanel(
                                selectInput('overallperfFunc', 'Select function', IPLTeamOverallPerfFunc),
                                selectInput('teamMatches', 'Select the team', IPLTeamsAll,selectize=FALSE, size=13),
                                uiOutput("Rank")
                                
                                
                            ),
                            mainPanel(
                                plotOutput('IPLTeamPerfOverall')
                            ) 
                            
                            
                   ),
                   tabPanel("About",
                            h2("Sixer - cricketr's Shiny avatar"),
                            p("This Shiny app is based on the R package 'cricketr'. In this Shiny app, I use  the
                    cricketr package to analyze the performances of cricketers. cricketr can analyze batsman
                    and bowlers in all formats of the game namely Test, ODI and Twenty20."),
                            p("The R package 'cricketr' has been authored by Tinniam V Ganesh for analyzing  performances of cricketers
                    based on ESPN Cricinfo's Statsguru"),
                            p("This Shiny app 'Sixer' has been designed and developed by  Tinniam V Ganesh, Nov 2015"),
                            p("The data for this Shiny app has been taken from ESPN Cricinfo - http://www.espncricinfo.com/ci/content/stats/index.html"),
                            p("More details about this app and for other posts, see my blog
                    http://gigadom.wordpress.com/")
                   )
                   
))
