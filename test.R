setwd("C:/software/cricket-package/cricsheet/googly/data")
load("Chennai Super Kings-BattingDetails.RData")
csk_details <- battingDetails
load("Deccan Chargers-BattingDetails.RData")
dc_details <- battingDetails
load("Delhi Daredevils-BattingDetails.RData")
dd_details <- battingDetails
load("Kings XI Punjab-BattingDetails.RData")
kxip_details <- battingDetails
load("Kochi Tuskers Kerala-BattingDetails.RData")
ktk_details <- battingDetails
load("Kolkata Knight Riders-BattingDetails.RData")
kkr_details <- battingDetails
load("Mumbai Indians-BattingDetails.RData")
mi_details <- battingDetails
load("Pune Warriors-BattingDetails.RData")
pw_details <- battingDetails
load("Rajasthan Royals-BattingDetails.RData")
rr_details <- battingDetails
load("Royal Challengers Bangalore-BattingDetails.RData")
rcb_details <- battingDetails
load("Sunrisers Hyderabad-BattingDetails.RData")
sh_details <- battingDetails
load("Gujarat Lions-BattingDetails.RData")
gl_details <- battingDetails
load("Rising Pune Supergiants-BattingDetails.RData")
rps_details <- battingDetails

a <- select(csk_details,batsman,runs,strikeRate)
b <- select(dc_details,batsman,runs,strikeRate)
c <- select(dd_details,batsman,runs,strikeRate)
d <- select(kxip_details,batsman,runs,strikeRate)
e <- select(ktk_details,batsman,runs,strikeRate)
f <- select(kkr_details,batsman,runs,strikeRate)
g <- select(mi_details,batsman,runs,strikeRate)
h <- select(pw_details,batsman,runs,strikeRate)
i <- select(rr_details,batsman,runs,strikeRate)
j <- select(rcb_details,batsman,runs,strikeRate)
k <- select(sh_details,batsman,runs,strikeRate)
l <- select(gl_details,batsman,runs,strikeRate)
m <- select(rps_details,batsman,runs,strikeRate)

df <- rbind(a,b,c,d,e,f,g,h,i,j,k,l,m)

a <- df %>% distinct(batsman)
a$batsman = as.character(a$batsman)
b <- a[order(a$batsman),]
save(b, file="batsmen.RData")
load("batsmen.RData")
IPLBatsmen <-b
# Get individual teams batsmen data

source("getBatsmen.R")
# Get CSK batsmen
csk_batsmen <- getBatsmen(csk_details)
dc_batsmen <- getBatsmen(dc_details)
dd_batsmen <- getBatsmen(dd_details)
kxip_batsmen <- getBatsmen(kxip_details)
ktk_batsmen <- getBatsmen(ktk_details)
kkr_batsmen <- getBatsmen(kkr_details)
mi_batsmen <- getBatsmen(mi_details)
pw_batsmen <- getBatsmen(pw_details)
rr_batsmen <- getBatsmen(rr_details)
rcb_batsmen <- getBatsmen(rcb_details)
sh_batsmen <- getBatsmen(sh_details)
gl_batsmen <- getBatsmen(gl_details)
rps_batsmen <- getBatsmen(rps_details)


#Save the details
save(csk_batsmen,file="csk.RData")
save(dc_batsmen, file="dc.RData")
save(dd_batsmen, file="dd.RData")
save(kxip_batsmen, file="kxip.RData")
save(ktk_batsmen, file="ktk.RData")
save(kkr_batsmen, file="kkr.RData")
save(mi_batsmen , file="mi.RData")
save(pw_batsmen, file="pw.RData")
save(rr_batsmen, file="rr.RData")
save(rcb_batsmen, file="rcb.RData")
save(sh_batsmen, file="sh.RData")
save(gl_batsmen, file="gl.RData")
save(rps_batsmen, file="rps.RData")



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



teams = list(csk_batsmen,dc_batsmen,dd_batsmen,kxip_batsmen,ktk_batsmen,kkr_batsmen,mi_batsmen,
             
                              pw_batsmen,rr_batsmen,rcb_batsmen,sh_batsmen,gl_batsmen,rps_batsmen)
b <- NULL
for (i in 1:length(teams)){
    a <- which(teams[[i]] == batsman)
    
    if(length(a) != 0){
         
         b <- c(b,i)
    
    }
}
b

m <- getTeamIndex(batsman)
ipl_teams <- list("Chennai Super Kings","Deccan Chargers", "Delhi Daredevils"," Kings Xi Punjab", 
              "Kochi Tuskers","Kolkata Knight Riders","Mumbai Indians","Pune Warriors",
              " Rajasthan Royals","Royal Challengers Bangalore","Sunrisers Hyderabad","Gujarat Lions",
                 "Rising Pune Supergiants")
l <- NULL
for (i in seq_along(m)){
   
   l <- c(l, ipl_teams[[m[i]]]) 
   l 
}

