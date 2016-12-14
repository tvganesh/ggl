#########################################################################################################
#
# Title : Sixer - cricketr's Shiny avatar
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: definitions.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################
# Function names for Test  batsman analysis
batsmenFuncs <- c("batsmanRunsVsDeliveries",
           "batsmanFoursSixes",
           "batsmanDismissals",
           "batsmanRunsVsStrikeRate",
           "batsmanMovingAverage",
           "batsmanCumulativeAverageRuns",
           "batsmanCumulativeStrikeRate",
           "batsmanRunsAgainstOpposition",
           "batsmanRunsVenue",
           "batsmanRunsPredict")



               

# Function names for Test bowler analysis
bowlersFuncs <- c("bowlerMeanEconomyRate",
            "bowlerMeanRunsConceded",
            "bowlerMovingAverage",
            "bowlerCumulativeAvgWickets",
            "bowlerCumulativeAvgEconRate",
            "bowlerWicketPlot",
            "bowlerWicketsAgainstOpposition",
            "bowlerWicketsVenue",
            "bowlerWktsPredict")


            


# Names of batsmen
load("batsmen.RData")



