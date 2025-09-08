> Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
> ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)
> CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)
> df_polls <- data.frame(Name, ABC_poll, CBS_poll)
> str(df_polls)
'data.frame':	7 obs. of  3 variables:
 $ Name    : chr  "Jeb" "Donald" "Ted" "Marco" ...
 $ ABC_poll: num  4 62 51 21 2 14 15
 $ CBS_poll: num  12 75 43 19 1 21 19
> head(df_polls)
     Name ABC_poll CBS_poll
1     Jeb        4       12
2  Donald       62       75
3     Ted       51       43
4   Marco       21       19
5   Carly        2        1
6 Hillary       14       21
> mean(df_polls$ABC_poll)
[1] 24.14286
> median(df_polls$CBS_poll)
[1] 19
> range(df_polls[, c("ABC_poll", "CBS_poll")])
[1]  1 75
> df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
> df_polls
     Name ABC_poll CBS_poll Diff
1     Jeb        4       12    8
2  Donald       62       75   13
3     Ted       51       43   -8
4   Marco       21       19   -2
5   Carly        2        1   -1
6 Hillary       14       21    7
7  Bernie       15       19    4
> 
> barplot(df_polls$Diff, names.arg = df_polls$Name,
+ main = "Poll Differences (CBS - ABC)",
+ ylab = "Difference",
+ col = "green")
