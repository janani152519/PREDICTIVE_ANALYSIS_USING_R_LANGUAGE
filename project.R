weather <- data.frame(
  day = 1:15,
  temperature = c(28, 30, 32, 31, 29, 27, 26, 28, 30, 33, 34, 35, 36, 34, 32),
  humidity = c(65, 60, 58, 62, 70, 75, 80, 78, 72, 68, 66, 64, 63, 67, 69),
  rainfall = c(2, 0, 0, 1, 3, 6, 8, 7, 4, 1, 0, 0, 0, 1, 2)
)


#1/which is hottest and coldest day


weather
coldest <- min(weather$temperature)
coldest_day <- weather$day[weather$temperature == coldest]
hottest <- max(weather$temperature)
hottest_day <- weather$day[weather$temperature == hottest]
coldest
coldest_day
hottest
hottest_day

#2/humidity and rainfall relationship


model <- lm(rainfall ~ humidity,data = weather)
plot(weather$humidity,weather$rainfall,
     col = "blue",
     main = "WEATHER ANALYSIS",
     xlab = "HUMIDITY",
     ylab = "RAINFALL",
     pch=16)
abline(model,col = "red",lwd=2)
predict(model,weather)


#3/regression analysis

modl <- lm(day ~ temperature + humidity + rainfall, data = weather)
summary(modl)
weather <- weather[1:7, c("temperature","humidity","rainfall")]
days <- c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
rownames(weather) <- days
trans <- t(as.matrix(weather))
barplot(
  trans,
  beside = TRUE,
  col = c("blue","hotpink","purple"),
  main = "WEATHER ANALYSIS REPORT",
  xlab = "DAYS",
  ylab = "WEATHER VALUES",
  ylim = c(0,90)
)

legend(
  "top",
  legend = rownames(trans),
  fill = c("blue","hotpink","purple"),
  horiz = TRUE
)