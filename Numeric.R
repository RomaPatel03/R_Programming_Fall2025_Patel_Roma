normalize_col <- function(col) {
       if(!is.numeric(col)) stop("Input must be numeric")
       if(min(col) == max(col)) return(rep(0, length(col)))  # handle single-value vector
       (col - min(col)) / (max(col) - min(col))
        }
norm <- normalize_col(cleaned$a)
norm
