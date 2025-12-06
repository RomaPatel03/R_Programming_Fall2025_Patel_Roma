# remove_missing_rows: Removes rows with any missing values
remove_missing_rows <- function(df) {
  df[complete.cases(df), ]
}
data <- data.frame(a = c(1, NA, 3), b = c(NA, 2, 3))
cleaned <- remove_missing_rows(data)
cleaned


