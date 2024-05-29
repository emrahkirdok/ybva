library(reshape2)

try <- 100

set <- matrix(data = NA, nrow = try, ncol = 2)
colnames(set) <- c("Y", "T")

for (i in 1:try){
  throw <- sample(x = c("Y", "T"), size = 1, replace = T, prob = c(0.5, 0.5))
  set[i, throw]<- 1
}

set[is.na(set)]<-0
cum_prop <- cumsum(set[,1])/(1:try)
set <- data.frame(Throws = 1:try, Heads=cum_prop, Tails = 1-cum_prop)
set <- melt(data = set, id.vars = "Throws", variable.name = "Outcome", value.name = "Proportion")

p <- ggplot(data = set, aes(x=Throws, y=Proportion)) + 
  geom_line(aes(group=Outcome, color=Outcome))

  
p <- p + transition_time(time=Throws)
