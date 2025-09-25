> A <- matrix(1:100,  nrow = 10)
> B <- matrix(1:1000, nrow = 10)
> dim(A)  # should be 10 × 10
[1] 10 10
> dim(B)  # 10 × 100 — not square
[1]  10 100
> # For A
> invA <- solve(A)
Error in solve.default(A) : 
  Lapack routine dgesv: system is exactly singular: U[8,8] = 0

> detA <- det(A)
> # For B
> invB <- tryCatch(solve(B), error = function(e) e)
> detB <- tryCatch(det(B),   error = function(e) e)
> 
> # For A
> invA <- tryCatch(solve(A), error = function(e) e)
> detA <- tryCatch(det(A),   error = function(e) e)
> # For B
> invB <- tryCatch(solve(B), error = function(e) e)
> detB <- tryCatch(det(B),   error = function(e) e)
> 
