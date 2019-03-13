---
title: make-shots-data
description: this document includes the codes to prepare the data for the next stage analysis
input: raw data from the github repository
output: a csv data-file called "shot-data"
---
  
iguodala <- read.csv("/Users/hanluchen/workout01/data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("/Users/hanluchen/workout01/data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("/Users/hanluchen/workout01/data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("/Users/hanluchen/workout01/data/klay-thompson.csv", stringsAsFactors = FALSE)
curry <- read.csv("/Users/hanluchen/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)

iguodala = cbind(iguodala, "Andrez Iguodala")
colnames(iguodala)[colnames(iguodala) =="Andrez Iguodala"] <- "name"
green = cbind(green, "Draymond Green")
durant = cbind(durant, "Kevin Durant")
thompson = cbind(thompson, "Klay Thompson")
curry = cbind(curry, "Stephen Curry")

colnames(iguodala)[14] <- "name"
colnames(green)[14] <- "name"
colnames(durant)[14] <- "name"
colnames(thompson)[14] <- "name"
colnames(curry)[14] <- "name"

iguodala = subset(cbind(iguodala, ifelse(iguodala[7]=="n", "shot_no", "shot_yes")), select = -7)
green = subset(cbind(green, ifelse(green[7]=="n", "shot_no", "shot_yes")), select = -7)
durant = subset(cbind(durant, ifelse(durant[7]=="n", "shot_no", "shot_yes")), select = -7)
thompson = subset(cbind(thompson, ifelse(thompson[7]=="n", "shot_no", "shot_yes")), select = -7)
curry = subset(cbind(curry, ifelse(curry[7]=="n", "shot_no", "shot_yes")), select = -7)

iguodala = cbind(iguodala, iguodala[4]*12-iguodala[5])
green = cbind(green, green[4]*12-green[5])
durant = cbind(durant, durant[4]*12-durant[5])
thompson = cbind(thompson, thompson[4]*12-thompson[5])
curry = cbind(curry, curry[4]*12-curry[5])

colnames(iguodala)[15] <- "minutes"
iguodala = subset(iguodala, select = -16)
colnames(green)[15] <- "minutes"
green = subset(green, select = -16)
colnames(durant)[15] <- "minutes"
durant = subset(durant, select = -16)
colnames(thompson)[15] <- "minutes"
thompson = subset(thompson, select = -16)
colnames(curry)[15] <- "minutes"
curry = subset(curry, select = -16)


sink(file ="/Users/hanluchen/workout01/output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink(file ="/Users/hanluchen/workout01/output/draymond-green-summary.txt")
summary(green)
sink()

sink(file ="/Users/hanluchen/workout01/output/kevin-durant-summary.txt")
summary(durant)
sink()

sink(file ="/Users/hanluchen/workout01/output/klay-thompson-summary.txt")
summary(thompson)
sink()

sink(file ="/Users/hanluchen/workout01/output/stephen-curry-summary.txt")
summary(curry)
sink()


shots_global = rbind(iguodala, green, durant, thompson, curry)
write.csv(shots_global, file = "/Users/hanluchen/workout01/data/shots-data.csv")

sink(file ="/Users/hanluchen/workout01/data/shots-data-summary.txt")
summary(shots_global)
sink()














