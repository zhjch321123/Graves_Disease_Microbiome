#ISP项目ME热图
setwd("C:/Users/zhjch/Desktop")
library(pheatmap)
all<-read.table("mag_heatmap.txt",header=TRUE,sep="\t",row.names=1)
colgroup=read.table("colgroup.txt",header=TRUE,sep="\t",row.names=1)
#rowgroup=read.table("rowgroup.txt",header=TRUE,sep="\t",row.names=1)
colnames(colgroup)=c("Model")

pheatmap(all,annotation_col = colgroup,gaps_col = c(62, 126),gaps_row = c(7),cellwidth=2,cluster_col = FALSE,cluster_rows = FALSE,cellheight=6,fontsize_row=6,fontsize_col=2,color = colorRampPalette(c("grey", "white", "dodgerblue4"))(10), filename="dif_species.pdf")



