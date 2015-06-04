setwd("..analysis/june2014/types_v1/et_shrunken_batch1_withbma")

genesnpnames=read.table("genesnpnames.txt")[,1]

dim(genesnpnames)

pm=read.table("post.mean.singlerun.txt")
dim(pm)

tissue.names=read.table("tissuenames.txt")[,1]

colnames(pm)=tissue.names

rownames(pm)=genesnpnames


head(pm)

