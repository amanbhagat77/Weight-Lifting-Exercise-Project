nafunction <- function(x) {
  naFraction <- sum(is.na(x)) / 13737
  naFraction
}

for (i in 104) {
  NaPercentage[i] <- nafunction(trainnew[,i])
  
}
nafunction(trainnew[,104])
naFraction <- sum(is.na(trainnew[,14])) / 13737

train.withoutNa <- trainnew[ , colSums(is.na(trainnew))/13737 <= 0.90]
