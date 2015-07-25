library(d3heatmap)

d = read.csv("data/exon2_for_r.csv")

rowNames <- paste(d$position, d$base, sep = "-")

d = d[,c(-1,-2,-7)]
d[is.na(d)] <- 0

rownames(d) <- rowNames
colnames(d) <- c("a", "t", "g", "c")


d3heatmap(d, scale = "column", colors = "Spectral", Rowv = NULL, Colv = NULL)

