---
title: make-shots-chart
description: "this document includes the codes to generate plots of nba players"
input: "cleaned up data from phase 3"
output: "shot plots of nba players"
---
  
court_file <- "/Users/hanluchen/workout01/images/nba-court.jpg"
court_image <- rasterGrob( readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

iguodala_shot_chart <- ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal()

green_shot_chart <- ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') + theme_minimal()

durant_shot_chart <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()

thompson_shot_chart <- ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()

curry_shot_chart <- ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') + theme_minimal()

pdf(file = "/Users/hanluchen/workout01/images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5)
iguodala_shot_chart
dev.off()

pdf(file = "/Users/hanluchen/workout01/images/draymond-green-shot-chart.pdf", width = 6.5, height = 5)
green_shot_chart
dev.off()

pdf(file = "/Users/hanluchen/workout01/images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5)
durant_shot_chart
dev.off()

pdf(file = "/Users/hanluchen/workout01/images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5)
thompson_shot_chart
dev.off()

pdf(file = "/Users/hanluchen/workout01/images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5)
curry_shot_chart
dev.off()

global_shot_chart <-ggplot(data = shots_global) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 season)') + theme_minimal() + facet_wrap(~name)

pdf(file = "/Users/hanluchen/workout01/images/gsw-shot-chart.pdf", width = 8, height = 7)
global_shot_chart
dev.off()

png(file = "/Users/hanluchen/workout01/images/gsw-shot-chart.png", width = 8, height = 7, res = 56)
global_shot_chart
dev.off()





















