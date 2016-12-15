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

# Get individual teams batsmen data

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



