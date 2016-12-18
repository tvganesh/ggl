getBatsmen <- function(df){
    bmen <- df %>% distinct(batsman) 
    bmen <- as.character(bmen$batsman)
    batsmen <- sort(bmen)
}

find1 <- function(x, a){
    which(x==a)
}


getTeamIndex <- function(batsman){
    b <- NULL
    for (i in 1:length(teams)){
        a <- which(teams[[i]] == batsman)
        
        if(length(a) != 0)
            b <- c(b,i)
        
        
    }
    b
}

getTeams <- function(x){
   
    l <- NULL
    # Get the teams passed in as indexes
    for (i in seq_along(x)){
        
        l <- c(l, IPLTeamNames[[x[i]]]) 
        
    }
    l
}

loadIPLBatsmen <- function(){
    setwd("./data")
    load("csk.RData")
    load("dc.RData")
    load("dd.RData")
    load("kxip.RData")
    load("ktk.RData")
    load("kkr.RData")
    load("mi.RData")
    load("pw.RData")
    load("rr.RData")
    load("rcb.RData")
    load("sh.RData")
    load("gl.RData")
    load("rps.RData")
    setwd("..")
    
}
    