##To run this file, open in the directory below##

setwd("../analysis/june2014/types_v1/et_shrunken_batch1_withbma")

genesnpnames=read.table("genesnpnames.txt")[,1]

dim(genesnpnames)

pm=read.table("post.mean.singlerun.txt")
dim(pm)

tissue.names=read.table("tissuenames.txt")[,1]

colnames(pm)=tissue.names

rownames(pm)=genesnpnames


head(pm)

genes <- sapply(rownames(pm), function(p) strsplit(p, '.', fixed=T)[[1]][1])

bestrows <- lapply(unique(genes), function(gene) {x<-pm[genes==gene,]; i<-which.max(apply(x, 1, function(i) max(abs(i)))); return(x[i,])})

strongmeans <- matrix(unlist(bestrows), ncol = 44, byrow = TRUE)

write.table(strongmeans,"strongmeans_first_batch.txt")