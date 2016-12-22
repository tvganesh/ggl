#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: ui.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################

shinyUI(navbarPage("cricketr analyzes Cricketers!",
                   # Batsman tab
                   tabPanel("Analyze batsman",
                            titlePanel("Analyze batsman"),
  
                            fluidRow(
                                column(3,
                                       uiOutput("batsmanFunctionList"),
                                       uiOutput("batsmanList")
                                       
                                      
                                ),
  
                                # Show a plot of the generated distribution        
                                column(6,
                                       plotOutput("batsmanPlot"),
                                       textOutput("text1")
                                ),
                                column(7, offset=4,
                                       tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                       tags$h5((tags$i("Nov 28,2015"))),
                                       tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                                )
                            )
                   ),
                   # Bowlers tab
                   tabPanel("Analyze bowlers",
                            # Application title
                            titlePanel("Analyze bowlers"),
                            
                            fluidRow(
                                column(3,
                                       
                                       uiOutput("bowlerFunctionList"), 
                                       uiOutput("bowlerList")
                                       
                                ),
                                
                                # Show a plot of the generated distribution        
                                column(6,
                                       plotOutput("bowlerPlot")
                                ),
                                column(7, offset=4,
                                       tags$h5((tags$i("Designed and developed by Tinniam V Ganesh"))),
                                       tags$h5((tags$i("Nov 28,2015"))),
                                       tags$h6("Data source ESPN Cricinfo: http://stats.espncricinfo.com/ci/engine/stats/index.html")
                                )
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
