> install.packages("AER")
trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.5/AER_1.2-15.tgz'
Content type 'application/x-gzip' length 2579148 bytes (2.5 MB)
==================================================
downloaded 2.5 MB


The downloaded binary packages are in
	/var/folders/5q/1ncfd7md71d144t5wpqt4mdh0000gn/T//RtmpbTiYN7/downloaded_packages
> install.packages("lattice")
trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.5/lattice_0.22-7.tgz'
Content type 'application/x-gzip' length 1394234 bytes (1.3 MB)
==================================================
downloaded 1.3 MB


The downloaded binary packages are in
	/var/folders/5q/1ncfd7md71d144t5wpqt4mdh0000gn/T//RtmpbTiYN7/downloaded_packages
> install.packages("ggplot2")
trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.5/ggplot2_4.0.0.tgz'
Content type 'application/x-gzip' length 5922735 bytes (5.6 MB)
==================================================
downloaded 5.6 MB


The downloaded binary packages are in
	/var/folders/5q/1ncfd7md71d144t5wpqt4mdh0000gn/T//RtmpbTiYN7/downloaded_packages
> library(AER)
Loading required package: car
Loading required package: carData
Loading required package: lmtest
Loading required package: zoo

Attaching package: ‘zoo’

The following objects are masked from ‘package:base’:

    as.Date, as.Date.numeric

Loading required package: sandwich
Loading required package: survival
> library(lattice)
> library(ggplot2)
> data("Affairs", package = "AER")
> head(Affairs)
   affairs gender age yearsmarried children religiousness education occupation rating
4        0   male  37        10.00       no             3        18          7      4
5        0 female  27         4.00       no             4        14          6      4
11       0 female  32        15.00      yes             1        12          1      4
16       0   male  57        15.00      yes             5        18          6      5
23       0   male  22         0.75       no             2        17          6      3
29       0 female  32         1.50       no             2        17          5      5
> summary(Affairs)
    affairs          gender         age         yearsmarried    children  religiousness     education    
 Min.   : 0.000   female:315   Min.   :17.50   Min.   : 0.125   no :171   Min.   :1.000   Min.   : 9.00  
 1st Qu.: 0.000   male  :286   1st Qu.:27.00   1st Qu.: 4.000   yes:430   1st Qu.:2.000   1st Qu.:14.00  
 Median : 0.000                Median :32.00   Median : 7.000             Median :3.000   Median :16.00  
 Mean   : 1.456                Mean   :32.49   Mean   : 8.178             Mean   :3.116   Mean   :16.17  
 3rd Qu.: 0.000                3rd Qu.:37.00   3rd Qu.:15.000             3rd Qu.:4.000   3rd Qu.:18.00  
 Max.   :12.000                Max.   :57.00   Max.   :15.000             Max.   :5.000   Max.   :20.00  
   occupation        rating     
 Min.   :1.000   Min.   :1.000  
 1st Qu.:3.000   1st Qu.:3.000  
 Median :5.000   Median :4.000  
 Mean   :4.195   Mean   :3.932  
 3rd Qu.:6.000   3rd Qu.:5.000  
 Max.   :7.000   Max.   :5.000  
> str(Affairs)
'data.frame':	601 obs. of  9 variables:
 $ affairs      : num  0 0 0 0 0 0 0 0 0 0 ...
 $ gender       : Factor w/ 2 levels "female","male": 2 1 1 2 2 1 1 2 1 2 ...
 $ age          : num  37 27 32 57 22 32 22 57 32 22 ...
 $ yearsmarried : num  10 4 15 15 0.75 1.5 0.75 15 15 1.5 ...
 $ children     : Factor w/ 2 levels "no","yes": 1 1 2 2 1 1 1 2 2 1 ...
 $ religiousness: int  3 4 1 5 2 2 2 2 4 4 ...
 $ education    : num  18 14 12 18 17 17 12 14 16 14 ...
 $ occupation   : int  7 6 1 6 6 5 1 4 1 4 ...
 $ rating       : int  4 4 4 5 3 5 3 4 2 5 ...
> 
> plot(Affairs$age, Affairs$yearsmarried,
+      main = "Base R: Age vs. Years Married",
+      xlab = "Age",
+      ylab = "Years Married",
+      pch = 19, col = "blue")
> hist(Affairs$rating,
+      main = "Base R: Distribution of Marriage Rating",
+      xlab = "Marriage Rating (1 = Very Unhappy, 5 = Very Happy)",
+      col = "green", border = "red")
> xyplot(yearsmarried ~ age | children, data = Affairs,
+        main = "Lattice: Years Married vs. Age by Children",
+        xlab = "Age",
+        ylab = "Years Married",
+        pch = 19, col = "orange")
> bwplot(rating ~ factor(religiousness),
+        data = Affairs,
+        main = "Lattice: Marriage Rating by Religiousness",
+        xlab = "Religiousness (1=Low, 5=High)",
+        ylab = "Marriage Rating",
+        fill = "lightblue")
> ggplot(Affairs, aes(x = age, y = yearsmarried, color = children)) +
+     geom_point(size = 2) +
+     geom_smooth(method = "lm", se = FALSE) +
+     labs(title = "ggplot2: Years Married vs. Age by Children",
+          x = "Age",
+          y = "Years Married") +
+     theme_minimal()
`geom_smooth()` using formula = 'y ~ x'
> ggplot(Affairs, aes(x = rating, fill = factor(religiousness))) +
+     geom_histogram(binwidth = 1, color = "black") +
+     facet_wrap(~ religiousness) +
+     labs(title = "ggplot2: Marriage Rating Distribution by Religiousness",
+          x = "Marriage Rating",
+          y = "Count",
+          fill = "Religiousness") +
+     theme_bw()

