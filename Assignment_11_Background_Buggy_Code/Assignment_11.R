> tukey_multiple <- function(x) {
+     outliers <- array(TRUE, dim = dim(x))
+     for (j in 1:ncol(x)) {
+         outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])  # <-- Bug here
+     }
+     outlier.vec <- vector("logical", length = nrow(x))
+     for (i in 1:nrow(x)) {
+         outlier.vec[i] <- all(outliers[i, ])
+     }
+     return(outlier.vec)
+ }
> 
> set.seed(123)
> test_mat <- matrix(rnorm(50), nrow = 10)
> tukey_multiple(test_mat)
Error in tukey.outlier(x[, j]) : could not find function "tukey.outlier"

> tukey.outlier <- function(x) {
+     if (!is.numeric(x)) stop("x must be numeric")
+     
+     q1 <- quantile(x, 0.25, na.rm = TRUE)
+     q3 <- quantile(x, 0.75, na.rm = TRUE)
+     iqr <- q3 - q1
+     lower <- q1 - 1.5 * iqr
+     upper <- q3 + 1.5 * iqr
+ (x < lower) | (x > upper)
+ }
> set.seed(123)
> test_mat <- matrix(rnorm(50), nrow = 10)
> tukey_multiple(test_mat)
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
