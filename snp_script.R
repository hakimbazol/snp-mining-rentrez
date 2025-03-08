
#Install package
install.packages("rentrez")
library(rentrez)

#Check database that can provide using rentrez
entrez_dbs()

#Convert gene name to gene ID
gene_search <- entrez_search(db="gene", term="(ERBB4[Gene Name]) AND Homo sapiens[Organism]", 
                             retmax=1)
geneId <- gene_search$ids

#Elink function
snp_links <- entrez_link(dbfrom='gene', id=geneId, db='snp')

# access results with $links
length(snp_links$links$gene_snp)

