#########################################################################################################
#
# Title : 
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: analyzeIPLBowlers.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################

analyzeIPLMatches <- function(match,matchFunc,team) {

    # Check and get the team indices of IPL teams in which the bowler has played
    IPLmatch <- paste("./IPLmatches/", match,".RData",sep="")
    IPLmatch <- load(IPLmatch)
    print(IPLmatch)
    

    
    if(matchFunc == "Match Batting Scorecard"){
        teamBattingScorecardMatch(match,IPLBowler,team)
    } else if (matchFunc == "Batting Partnerships"){
        teamBatsmenPartnershipMatch(bowlerDF,IPLBowler)
    } else if (matchFunc == "Batsmen vs Bowlers"){
        teamBatsmenVsBowlersMatch(bowlerDF,IPLBowler)
    }  else if (matchFunc == "Bowling Scorecard"){
        teamBowlingScorecardMatch(bowlerDF,IPLBowler)    
    } else if (matchFunc == "Bowling Wicket Kind"){
        teamBowlingWicketKindMatch(bowlerDF,IPLBowler)
    } else if (matchFunc == "Bowling Wicket Runs"){
        teamBowlingWicketRunsMatch(bowlerDF,IPLBowler)
    } else if (matchFunc == "Bowling Wicket Match"){
        teamBowlingWicketMatch(bowlerDF,IPLBowler)
    } else if (matchFunc == "Bowler vs Batsmen"){
        teamBowlersVsBatsmenMatch(bowlerDF,IPLBowler)
    } else if (matchFunc == "Match Worm Graph"){
        matchWormGraph(bowlerDF,IPLBowler)
    }
    
    
    
}

