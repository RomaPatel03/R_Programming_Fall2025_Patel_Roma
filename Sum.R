sum_numeric_cols <- function(df) {
  nums <- df[sapply(df, is.numeric)]
  sapply(nums, sum, na.rm = TRUE)
}
sums <- sum_numeric_cols(cleaned)
sums



