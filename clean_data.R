remove_missing_rows <- function(df) {
  # This removes rows that contain any NA values
  df[complete.cases(df), ]
}
test_df <- data.frame(a = c(1, NA, 3), b = c(NA, 2, 3))
remove_missing_rows(test_df)
# remove_missing_rows: Removes rows that contain any missing values
# Input: a data frame
# Output: a data frame with no missing values
remove_missing_rows <- function(df) {
  df[complete.cases(df), ]
}

