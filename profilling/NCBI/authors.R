

install.packages("RISmed")
library(RISmed)


library(RISmed)
query = "GWAS and plant"
plantgwas <- EUtilsSummary(query, type="esearch", db = "pubmed", mindate=2005, maxdate=2015, retmax=1000)
QueryCount(plantgwas)
#617
records <- EUtilsGet(plantgwas)
#years <- Year(ngs_records)
authors <- Author(records)
titles <- Title(records)
ngs_pubs_count <- as.data.frame(table(years))



res <- data.frame()
for(i in 1:617){
    ### get the last author of each paper:
    tem <- authors[[i]][nrow(authors[[i]]),]
    res <- rbind(res, tem)
}

write.table(res, "plant_gwas_authors.csv", sep=",", row.names=FALSE, quote=FALSE)
