library(readr)
shots_data <- read_csv("C:/Users/kazho/Downloads/shots_data.csv")
View(shots_data)

#Team A
shots_data_A <- shots_data[1:280,]
shots_data_A$x <- abs(shots_data_A$x)
shots_data_A$y <- abs(shots_data_A$y)

#Shot Dist
shots_data_A$dist <- sqrt((shots_data_A$x-0)^2 + (shots_data_A$y-0)^2)

NC3A <- subset(subset(shots_data_A, y>7.8),dist>=23.75)
ShotDistNC3A <- 68/280

TwoptA <- subset(shots_data_A, dist<22.0)
ShotDistTwoA <- 191/280

C3A <- subset(subset(shots_data_A,  y <= 7.8),dist>=22.0)
ShotDistC3 <- 18/280

#eFG%
subset(NC3A, fgmade == 1)
efgNC3A <- (21+(0.5*21))/68

subset(C3, fgmade == 1)
efgC3A <- (9+(0.5*9))/18

subset(TwoptA, fgmade == 1)
efgTwoA <- (94+(0.5*0))/191

#Team B
shots_data_B <- shots_data[281:504,]
shots_data_B$x <- abs(shots_data_B$x)
shots_data_B$y <- abs(shots_data_B$y)
subset(shots_data_B, x>23.75)

#Shot Dist
shots_data_B$dist <- sqrt((shots_data_B$x-0)^2 + (shots_data_B$y-0)^2)

NC3B <- subset(subset(shots_data_B, y>7.8),dist>=23.75)
ShotDistNC3B <- 62/224

TwoptB <- subset(shots_data_B, dist<22.0)
ShotDistTwoB <- 149/224

C3B <- subset(subset(shots_data_B,  y <= 7.8),dist>=22.0)
ShotDistC3B <- 12/224

#eFG%
subset(NC3B, fgmade == 1)
efgNC3B <- (21+(0.5*21))/62

subset(C3B, fgmade == 1)
efgC3B <- (4+(0.5*4))/12

subset(TwoptB, fgmade == 1)
efgTwoB <- (66+(0.5*0))/149
