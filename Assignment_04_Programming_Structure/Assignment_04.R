> Frequency     <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
> BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
> FirstAssess   <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
> SecondAssess  <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
> FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
> df_hosp <- data.frame(
+     Frequency, BloodPressure, FirstAssess, SecondAssess, FinalDecision, stringsAsFactors = FALSE
+ )
> summary(df_hosp)
   Frequency    BloodPressure   
 Min.   :0.20   Min.   : 32.00  
 1st Qu.:0.30   1st Qu.: 63.75  
 Median :0.40   Median : 95.00  
 Mean   :0.43   Mean   :102.60  
 3rd Qu.:0.55   3rd Qu.:128.50  
 Max.   :0.90   Max.   :205.00  
                                
  FirstAssess      SecondAssess
 Min.   :0.0000   Min.   :0.0  
 1st Qu.:0.0000   1st Qu.:0.0  
 Median :1.0000   Median :1.0  
 Mean   :0.5556   Mean   :0.6  
 3rd Qu.:1.0000   3rd Qu.:1.0  
 Max.   :1.0000   Max.   :1.0  
 NA's   :1                     
 FinalDecision
 Min.   :0.0  
 1st Qu.:0.0  
 Median :1.0  
 Mean   :0.6  
 3rd Qu.:1.0  
 Max.   :1.0  
              
> df_hosp <- na.omit(df_hosp)
> boxplot(
+     BloodPressure ~ FirstAssess,
+     data = df_hosp,
+     names = c("Good", "Bad"),
+     ylab = "Blood Pressure",
+     main = "BP by First MD Assessment",
+     col = c("lightblue", "orange")
+ )
> boxplot(
+     BloodPressure ~ SecondAssess,
+     data = df_hosp,
+     names = c("Low", "High"),
+     ylab = "Blood Pressure",
+     main = "BP by Second MD Assessment",
+     col = c("lightgreen", "red")
+ )
> 
> boxplot(
+     BloodPressure ~ FinalDecision,
+     data = df_hosp,
+     names = c("Low", "High"),
+     ylab = "Blood Pressure",
+     main = "BP by Final Decision",
+     col = c("gray", "purple")
+ )
> 
> hist(
+     df_hosp$Frequency,
+     breaks = seq(0, 1, by = 0.1),
+     xlab = "Visit Frequency",
+     main = "Histogram of Visit Frequency",
+     col = "blue",
+     border = "white"
+ )
> 
> hist(
+     df_hosp$BloodPressure,
+     breaks = 8,
+     xlab = "Blood Pressure",
+     main = "Histogram of Blood Pressure",
+     col = "pink",
+     border = "white"
+ )
> 
