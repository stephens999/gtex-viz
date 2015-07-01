


tissue_id_gene_expr_data=as.character(read.table("../data/tissue_id_gene_expr_data.txt")[,1]);
tissue_id_eqtl_study=as.character(read.table("../data/tissue_id_eqtl_study.txt")[,1]);

temp_eqtl= gsub("_"," - ",tissue_id_eqtl_study);

length(tissue_id_gene_expr_data[!is.na(match(tissue_id_gene_expr_data,temp_eqtl))])

temp_eqtl=gsub("_"," ",stringi::stri_replace_first_fixed(tissue_id_eqtl_study,"_"," - "));

length(tissue_id_gene_expr_data[!is.na(match(tissue_id_gene_expr_data,temp_eqtl))])

tissue_id_gene_expr_data = gsub("\\(|\\)", "", tissue_id_gene_expr_data);

temp_eqtl[44]="Whole Blood";
temp_eqtl[37]="Small Intestine - Terminal Ileum"
temp_eqtl[3]="Adrenal Gland";

write.table(temp_eqtl,"../data/tissue_id_eqtl_study.txt");
write.table(tissue_id_gene_expr_data,"../data/tissue_id_gene_expr_data.txt");

