> student6 <- read.csv(file.choose(), header = TRUE, stringsAsFactors = FALSE)
> print(names(student6))
[1] "Name"  "Age"   "Sex"   "Grade"
> install.packages("plyr") 
trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.5/plyr_1.8.9.tgz'
Content type 'application/x-gzip' length 984753 bytes (961 KB)
==================================================
downloaded 961 KB


The downloaded binary packages are in
	/var/folders/5q/1ncfd7md71d144t5wpqt4mdh0000gn/T//RtmpnNQ7dy/downloaded_packages
> library(plyr)
> gender_mean <- ddply(
+     student6,
+     "Sex",
+     summarise,
+     GradeAverage = mean(Grade, na.rm = TRUE)
+ )
> write.table(
+     gender_mean,
+     file = "gender_mean.txt",
+     sep  = "\t",
+     row.names = FALSE
+ )
> i_students <- subset(
+     student6,
+     grepl("i", Name, ignore.case = TRUE)
+ )
> write.csv(
+     i_students$Name,
+     file      = "i_students.csv",
+     row.names = FALSE,
+     quote     = FALSE
+ )
> write.csv(
+     i_students,
+     file      = "i_students_full.csv",
+     row.names = FALSE
+ )
> print(list.files())
 [1] "1098-T 2024.pdf"                                   "Applications"                                     
 [3] "Certificate for Community Tsunami .pdf"            "certificate.pdf"                                  
 [5] "Cover Letter.docx"                                 "Cover Letter.pdf"                                 
 [7] "Desktop"                                           "Documents"                                        
 [9] "Downloads"                                         "gender_mean.txt"                                  
[11] "Graduation Pictures.png"                           "i_students_full.csv"                              
[13] "i_students.csv"                                    "Implementation Plan for A Databse.docx"           
[15] "JobInternship.xlsx"                                "Library"                                          
[17] "Midterm.java"                                      "MOD 11 Coding Check.R"                            
[19] "MODULE 10- Coding Check.R"                         "module 4 Quiz.docx"                               
[21] "Module 6.png"                                      "Module 7.png"                                     
[23] "Module 8.png"                                      "MODULE-10--Coding-Check.docx"                     
[25] "Movies"                                            "Music"                                            
[27] "pico.save"                                         "Pictures"                                         
[29] "Public"                                            "resume 1.pdf"                                     
[31] "Resume.docx"                                       "Rplot.pdf"                                        
[33] "Self Review Project 3 Collaborative Proposal.docx" "Sites"                                            
[35] "Untitled.ipynb"                                    "Untitled.log"                                     
[37] "Untitled.R"                                        "Untitled.tex"                                     
[39] "USF Acceptance.pdf"                               
> 
