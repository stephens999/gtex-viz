In this folder we keep the codes and the corresponding output files.

eQTL_tSNE.Rmd : This script is meant to perform t-SNE (2D)on the gtex-eQTL data. Also we use "qtlcharts" to show the t-SNE plots interactively

gene_tSNE.Rmd : This script performs t-SNE on the 5000 most highly expressed (mean read counts expression) gtex genes
		 based on their reads expression in the 8555 tissue samples. We removed some of the genes that did not show up in the BioMArt
		gene database for homo sapiens upon giving the Ensembl id. We also try to map these genes using qtlcharts to the average log 
		expression in each tissue. 

tissues_tSNE.Rmd : This script performs t-SNE on the 8555 tissue samples using the reads level data. Due to some anomaly (Liver) in the t-SNE plot,
		  we also perform Admixture model on these samples and then perform t-SNE on the admixture model proportions data (logit transform)
 
