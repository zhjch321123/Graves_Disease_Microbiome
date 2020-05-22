#ISP项目ME热图
setwd("C:/Users/zhjch/Desktop")
library(pheatmap)

#for mantel test
all<-read.table("123.txt",header=TRUE,sep="\t",row.names=1)
pheatmap(all, display_numbers = TRUE, number_format = "%.2f", cellwidth=24,cluster_col = FALSE, cluster_row = FALSE, cellheight=24,fontsize_row=24,fontsize_col=24,color = colorRampPalette(c("white", "deepskyblue"))(50), filename="cc1.pdf")




#for adonis
all<-read.table("123.txt",header=TRUE,sep="\t",row.names=1)
bk <- c(seq(0,10,by=0.1),seq(11,65,by=1)) #用于分配颜色范围
pheatmap(all, display_numbers = TRUE, number_format = "%.2f", cellwidth=24,cluster_col = FALSE, cluster_row = FALSE, cellheight=24,fontsize_row=24,fontsize_col=24, color = c(colorRampPalette(colors = c("white", "deepskyblue"))(length(bk)/2),colorRampPalette(colors = c("deepskyblue", "darkorchid4"))(length(bk)/2)), breaks=bk, filename="cc134.pdf")
