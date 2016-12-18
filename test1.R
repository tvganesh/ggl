######################################################Bowling
# Data taken from Rank post
setwd("C:/software/cricket-package/cricsheet/googly/data")
load("Chennai Super Kings-BowlingDetails.RData")
csk_details <- bowlingDetails
load("Deccan Chargers-BowlingDetails.RData")
dc_details <- bowlingDetails
load("Delhi Daredevils-BowlingDetails.RData")
dd_details <- bowlingDetails
load("Kings XI Punjab-BowlingDetails.RData")
kxip_details <- bowlingDetails
load("Kochi Tuskers Kerala-BowlingDetails.RData")
ktk_details <- bowlingDetails
load("Kolkata Knight Riders-BowlingDetails.RData")
kkr_details <- bowlingDetails
load("Mumbai Indians-BowlingDetails.RData")
mi_details <- bowlingDetails
load("Pune Warriors-BowlingDetails.RData")
pw_details <- bowlingDetails
load("Rajasthan Royals-BowlingDetails.RData")
rr_details <- bowlingDetails
load("Royal Challengers Bangalore-BowlingDetails.RData")
rcb_details <- bowlingDetails
load("Sunrisers Hyderabad-BowlingDetails.RData")
sh_details <- bowlingDetails
load("Gujarat Lions-BowlingDetails.RData")
gl_details <- bowlingDetails
load("Rising Pune Supergiants-BowlingDetails.RData")
rps_details <- bowlingDetails


aa <- list(csk_details,dc_details,dd_details,kxip_details,ktk_details,kkr_details,
           mi_details,pw_details,rr_details,rcb_details,sh_details,gl_details,rps_details)
a <- select(csk_details,bowler,runs)
b <- select(dc_details,bowler,runs)
c <- select(dd_details,bowler,runs)
d <- select(kxip_details,bowler,runs)
e <- select(ktk_details,bowler,runs)
f <- select(kkr_details,bowler,runs)
g <- select(mi_details,bowler,runs)
h <- select(pw_details,bowler,runs)
i <- select(rr_details,bowler,runs)
j <- select(rcb_details,bowler,runs)
k <- select(sh_details,bowler,runs)
l <- select(gl_details,bowler,runs)
m <- select(rps_details,bowler,runs)

df <- rbind(a,b,c,d,e,f,g,h,i,j,k,l,m)

a <- df %>% distinct(bowler)
a$bowler = as.character(a$bowler)
b <- a[order(a$bowler),]
save(b, file="bowler.RData")
load("bowler.RData")
IPLBowlers <-b

csk_bowlers <- getBowlers(csk_details)
dc_bowlers <- getBowlers(dc_details)
dd_bowlers <- getBowlers(dd_details)
kxip_bowlers <- getBowlers(kxip_details)
ktk_bowlers <- getBowlers(ktk_details)
kkr_bowlers <- getBowlers(kkr_details)
mi_bowlers <- getBowlers(mi_details)
pw_bowlers <- getBowlers(pw_details)
rr_bowlers <- getBowlers(rr_details)
rcb_bowlers <- getBowlers(rcb_details)
sh_bowlers <- getBowlers(sh_details)
gl_bowlers <- getBowlers(gl_details)
rps_bowlers <- getBowlers(rps_details)


save(csk_bowlers,file="csk1.RData")
save(dc_bowlers, file="dc1.RData")
save(dd_bowlers, file="dd1.RData")
save(kxip_bowlers, file="kxip1.RData")
save(ktk_bowlers, file="ktk1.RData")
save(kkr_bowlers, file="kkr1.RData")
save(mi_bowlers , file="mi1.RData")
save(pw_bowlers, file="pw1.RData")
save(rr_bowlers, file="rr1.RData")
save(rcb_bowlers, file="rcb1.RData")
save(sh_bowlers, file="sh1.RData")
save(gl_bowlers, file="gl1.RData")
save(rps_bowlers, file="rps1.RData")
