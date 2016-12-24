#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: ui.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
load("./batsmen.RData")
IPLBatsmen <-b

load("./bowler.RData")
IPLBowlers <-b

a <-list.files("IPLmatches/")
IPLMatches <- gsub(".RData","",a)

a <-list.files("IPLMatches2teams/")
IPLMatches2Teams <- gsub(".RData","",a)

a <-list.files("allMatchesallOppn/")
IPLTeamsAll <- gsub(".RData","",a)

shinyUI(navbarPage("cricketr analyzes Cricketers!",
                   # Batsman tab
                   tabPanel("Analyze batsman",
                            headerPanel('Iris k-means clustering'),
                            
                            sidebarPanel(
                                selectInput('batsmanFunc', 'X Variable', IPLBatsmanFuncs),
                                selectInput('batsman', 'Y Variable', IPLBatsmen,selectize=FALSE, size=20)
                                           
                                
                            ),
                            mainPanel(
                                plotOutput('batsmanPlot')
                            )
                            
                               
                   ),
                   # Bowlers tab
                   tabPanel("Analyze bowlers",
                            # Application title
                            headerPanel('Iris k-means clustering'),
                            
                            sidebarPanel(
                                selectInput('bowlerFunc', 'X Variable', IPLBowlerFuncs),
                                selectInput('bowler', 'Y Variable', IPLBowlers,selectize=FALSE, size=20)
                                
                                
                            ),
                            mainPanel(
                                plotOutput('bowlerPlot')
                            )
                                
                            
                   ),
                   # Analyze IPL matches
                   tabPanel("Analyze IPL matches",
                            # Application title
                            headerPanel('Iris k-means clustering'),
                            
                            sidebarPanel(
                                selectInput('matchFunc', 'X Variable', IPLMatchFuncs),
                                selectInput('match', 'Y Variable', IPLMatches,selectize=FALSE, size=20),
                                uiOutput("selectTeam")
                                #selectInput('team', 'X Variable', team)
                                
                            ),
                            mainPanel(
                                plotOutput('IPLMatchPlot')
                            )
                            
                   ),
               
                   # Analyze 2 Teams IPL matches
                   tabPanel("2 teams",
                            # Application title
                            # Application title
                            headerPanel('Iris k-means clustering'),
                            
                            sidebarPanel(
                                selectInput('matches2TeamFunc', 'X Variable', IPLMatches2TeamsFuncs),
                                selectInput('matches', 'Y Variable', IPLMatches2Teams,selectize=FALSE, size=20),
                                uiOutput("selectTeam2")
                                
                                
                            ),
                            mainPanel(
                                plotOutput('IPLMatch2TeamsPlot')
                            ) 
                            
                   ),
                   
                   # Analyze IPL Team Overall Perf
                   tabPanel("2 teams",
                            # Application title
                            # Application title
                            headerPanel('Iris k-means clustering'),
                            
                            sidebarPanel(
                                selectInput('overallperfFunc', 'X Variable', IPLTeamOverallPerfFunc),
                                selectInput('teamMatches', 'Y Variable', IPLTeamsAll,selectize=FALSE, size=13),
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
