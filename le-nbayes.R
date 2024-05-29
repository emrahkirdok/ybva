library(seqinr)
library(kmer)

dna <- read.fasta(file = "03-bilgisayarli-dusunme/data/example.fna")

train <- function(dna,k){
  Y <- names(dna)
  X <- colnames(kcount(x = dna[[1]], k = k))
  mat <- matrix(data = 0, nrow = length(Y), ncol = length(X))
  colnames(mat) <- X
  rownames(mat) <- Y
  
  for (i in 1:length(Y)){
    kounts <- kcount(x = dna[[i]], k = k)+1
    mat[i,colnames(kounts)] <- kounts/sum(kounts)
  }
  return(mat)
}

mat <- train(dna, k=8)

query <- dna[[1]][4:45]

predict <- function(query,mat,k){
  query_freq <- kcount(x = query,k = k)/sum(kcount(x = query,k = k))
  kmer_names <- colnames(query_freq>0)
  
  Y <- rownames(mat)
  predict_mat <- matrix(data = 0, nrow=length(Y), ncol = 2)
  predict_mat <- data.frame(predict_mat)
  
  for (i in 1:length(Y)){
    y <- Y[i]
    freq <- mat[y,kmer_names]
    
    g <- 0; for(j in freq){g <- 0 + -log(j)}
    predict_mat[i,] <- c(y, g)
  }
  colnames(predict_mat) <- c("Class", "-Log Likelihood")
  predict_mat[,2] <- as.numeric(predict_mat[,2])
  #predict_mat[which.max(predict_mat$X2),]
  return(predict_mat)
  hist(predict_mat[,2])
}

k<-8
mat <- train(dna,k=k)
h <- predict(query = dna[[4]], mat = mat, k = k); h[which.max(h$`-Log Likelihood`),];h
