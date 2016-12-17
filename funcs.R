getBatsmen <- function(df){
    bmen <- df %>% distinct(batsman) 
    bmen <- as.character(bmen$batsman)
    batsmen <- sort(bmen)
}

find1 <- function(x, a){
    which(x==a)
}


getTeams <- function(batsman){
    b <- NULL
    for (i in 1:length(teams)){
        a <- which(teams[[i]] == "R Ashwin")
        
        if(length(a) != 0)
            b <- c(b,i)
        
        
    }
    b
}