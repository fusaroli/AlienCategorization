cosine_prep <- function(x1,x2){
  dimensions <- unique(c(x1,x2))
  # Creating vectors counting how many tokens per each dimension in each utterance
  n=1
  v1=NULL
  v2=NULL
  for (d in dimensions){
    v1[n] <- sum(x1==d) 
    v2[n] <- sum(x2==d)
    n=n+1
  }
  return(data.frame(dimensions,v1,v2))
}

repetitions_prep <- function (d) {
  dd <- subset(d,v1 > 0)
  colnames(dd) <- c("token","frequency","repetitions")
  return(dd)
}

# cosine_similarity <- function(x1, x2){
#   dimensions <- unique(c(x1, x2))
#   # Creating vectors counting how many tokens per each dimension in each utterance
#   n <- 1
#   v1 <- NULL
#   v2 <- NULL
#   for (d in dimensions){
#     v1[n] <- sum(x1 == d) 
#     v2[n] <- sum(x2 == d)
#     n <- n + 1
#   }
#   cosine <- sum(v1 * v2) / (sqrt(sum(v1^2)) * sqrt(sum(v2^2)))
#   return(cosine)
# }

cosine_similarity <- function(x1,x2){
  cosine <- sum(x1*x2) / (sqrt(sum(x1^2))*sqrt(sum(x2^2)))
  return(cosine)
}

ngram <- function(x,n){
  x <- txt_nextgram(x, n=n)
  x <- x[!is.na(x)]
  return(x) 
}