#########################################################################################################
#
# Title : 
# Designed and developed by: Tinniam V Ganesh
# Date : 28 Nov 2015
# File: analyzeIPLBowlers.R
# More details: https://gigadom.wordpress.com/
#
#########################################################################################################

analyzeIPLMatches <- function(match,matchFunc) {

    # Check and get the team indices of IPL teams in which the bowler has played
    i <- getTeamIndex_bowler(IPLBowler)
    

    
    if(func == "Match Batting Scorecard"){
        teamBattingScorecardMatch(bowlerDF,IPLBowler)
    } else if (func == "Batting Partnerships"){
        teamBatsmenPartnershipMatch(bowlerDF,IPLBowler)
    } else if (func == "Batsmen vs Bowlers"){
        teamBatsmenVsBowlersMatch(bowlerDF,IPLBowler)
    }  else if (func == "Bowling Scorecard"){
        teamBowlingScorecardMatch(bowlerDF,IPLBowler)    
    } else if (func == "Bowling Wicket Kind"){
        teamBowlingWicketKindMatch(bowlerDF,IPLBowler)
    } else if (func == "Bowling Wicket Runs"){
        teamBowlingWicketRunsMatch(bowlerDF,IPLBowler)
    } else if (func == "Bowling Wicket Match"){
        teamBowlingWicketMatch(bowlerDF,IPLBowler)
    } else if (func == "Bowler vs Batsmen"){
        teamBowlersVsBatsmenMatch(bowlerDF,IPLBowler)
    } else if (func == "Match Worm Graph"){
        matchWormGraph(bowlerDF,IPLBowler)
    }
    
    
    
}

