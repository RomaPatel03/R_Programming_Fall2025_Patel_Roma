My R Markdown Primer
Roma Patel
2025-11-11
Introduction
R Markdown is a tool for combining text, putting out R code, and math into one doc. It researches as the code and results are being put out together.

Narative Paragraph
In this i will be able to explore basic feature that R markdown has to offer. Writing text in Markdown you can create heading, titles, make bold texts, add color to graphs and SO MUCH MORE.

##LaTeX math expression

##Two executable R code chunks

# Load the ggplot2 library
library(ggplot2)

# Use the built-in mtcars dataset
data(mtcars)
head(mtcars)
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
R Markdown
This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see http://rmarkdown.rstudio.com.

When you click the Knit button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

summary(cars)
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
Concluing Reflection
Working with the R Markdown is very flexible then writing things out. I am able to re run my analysis. It is very easy and i am able to use LaTex math easily. The biggest challenge is the formats and the results of the analysis and communication just making sure it all comes out right. ## Including Plots

You can also embed plots, for example:



Note that the echo = FALSE parameter was added to the code chunk to prevent printing of the R code that generated the plot.
