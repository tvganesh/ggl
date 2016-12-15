getBatsmen <- function(df){
    bmen <- df %>% distinct(batsman) 
    bmen <- as.character(bmen$batsman)
    batsmen <- sort(bmen)
}