study <- data.frame( 
  Student = paste("S",1:10,sep=" "),
  Study_Hours = c(1,2,2.5,3,4,5,6,6.5,7,8),
  Marks = c(35,40,45,50,60,68,75,78,85,92))
study
------------------------------------
plot(study$Study_Hours,study$Marks,
     main = " STUDENT STUDY HOURS VS MARKS ",
     xlab = "STUDY HOURS",
     ylab = "MARKS SCORED",
     type = "b",
     col="blue",
     cex = 1,
     pch = 1,
     lwd = 3,
     lty = 3,
     xlim = c(0,9),
     ylim = c(0,100))
-------------------------------------
plot(study$Study_Hours,study$Marks,
       main = "  MARKS PROGRESSION",
       xlab = "STUDY HOURS",
       ylab = "PROGRESSION",
       type = "l",
       col="black",
       cex = 1,
       pch = 1,
       lwd = 3,
       lty = 3,
       xlim = c(0,9),
       ylim = c(0,100))
-----------------------------------
bp <- barplot(study$Marks,
                names.arg = study$Student,
                main = "MARKS PROGRESSION",
                xlab = "STUDENT",
                ylab = "PROGRESSION",
                col = c("violet","black","blue","hotpink","red","green","yellow","brown","gold","purple3"),
                width = 2,
                space = 0.5,
                ylim = c(0,100)
  )
------------------------------------
avg <- (sum(study$Marks)/10)
avg

