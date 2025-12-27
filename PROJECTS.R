phone_sales <- data.frame(
  Quarter = c("Q1", "Q2", "Q3", "Q4", "Q1", "Q2", "Q3", "Q4"),
  Brand = c("Alpha", "Alpha", "Alpha", "Alpha", "Nova", "Nova", "Nova", "Nova"),
  Ads_Spend =  c(20,25,30,35,15,18,22,28),
  Units_Sold = c(400,480,550, 650, 300, 360, 420, 520))
#1 ROW/COLUMN-----------------------------------------
nrow(phone_sales)
ncol(phone_sales)
#2 BRAND VS UNIT SOLD-------------------------------------------
bp <- barplot(phone_sales$Units_Sold,
              names.arg = phone_sales$Brand,
              main = "PHONE SALES DATA",
              xlab = "BRAND",
              ylab = "UNITS SOLD",
              col = c("violet","black"),
              width = 2,
              space = 0.5,
              ylim = c(0,700)
)
#3 ADS SPEND VS UNIT SOLD------------------------------------------
plot(
  phone_sales$Ads_Spend,
  phone_sales$Units_Sold,
  main = "PHONE SALES DATA",
  xlab = "ADS SPEND",
  ylab = "UNITS SOLD",
  type = "b",
  col = "blue",
  cex = 1,
  pch = 1,
  lwd = 3,
  lty = 1,
  xlim = c(15, 35),
  ylim = c(300, 700)
)
grid()
legend(
  "top",
  legend = c("ADS SPEND VS UNIT SOLD"),
  col = c("blue"),
  pch = 1,
  lty = 1
)
#4 UNIT SOLD IN QUATER-----------------------------------------------
plot(
  phone_sales$Units_Sold,
  main = "PHONE SALES DATA",
  xlab = "QUATER",
  ylab = "UNIT SOLD",
  type = "b",
  col = "red",
  cex = 1,
  pch = 1,
  lwd = 3,
  lty = 1,
  ylim = c(300, 700)
)
grid()
legend(
  "top",
  legend = c("UNIT SOLD IN QUATER"),
  col = c("red"),
  pch = 1,
  lty = 1
)
#5 QUATER VS UNIT SOLD-----------------------------------------------
hist(phone_sales$Units_Sold,
       main= "PHONE SALES DATA",
       xlab = "QUATER",
       ylab = "UNIT SOLD",
       col = "purple",
       border = "black",
       breaks = 5,
       freq = FALSE)
lines(
  density(phone_sales$Units_Sold), col="black",lwd=2)
#6 LINEAR REGRESSION MODEL------------------------------------------
model <- lm(Units_Sold ~ Ads_Spend , data = phone_sales )
summary(model)
----------------------------------------------------
