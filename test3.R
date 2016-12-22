a <-list.files("IPLmatches/")
b <- gsub(".RData","",a)
c <- strsplit(b[1],"-")
c[[1]]
c[[2]]
