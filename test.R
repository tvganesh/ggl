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
batsmen <- csk_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
csk_batsmen <- sort(batsmen)

# Get Deccan chargers batsmen
batsmen <- dc_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
dc_batsmen <- sort(batsmen)

# Get Delhi Daredevils batsmen
batsmen <- dd_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
dd_batsmen <- sort(batsmen)

# Get KCIP batsmen
batsmen <- kxip_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
kxip_batsmen <- sort(batsmen)

# Get KTK batsmen
batsmen <- ktk_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
ktk_batsmen <- sort(batsmen)

# Get KKR batsmen
batsmen <- kkr_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
kkr_batsmen <- sort(batsmen)

# Get MI batsmen
batsmen <- mi_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
mi_batsmen <- sort(batsmen)

# Get PW batsmen
batsmen <- pw_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
pw_batsmen <- sort(batsmen)

# Get RR batsmen
batsmen <- rr_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
rr_batsmen <- sort(batsmen)

# Get RCB batsmen
batsmen <- rcb_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
rcb_batsmen <- sort(batsmen)

# Get SH batsmen
batsmen <- sh_details %>% distinct(batsman) 
batsmen <- as.character(batsmen$batsman)
sh_batsmen <- sort(batsmen)
