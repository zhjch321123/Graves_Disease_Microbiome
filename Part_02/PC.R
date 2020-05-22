setwd("C:/Users/zhjch/Desktop")
library(ggplot2)
extract_letter <- function(x){
  B<-strsplit(x,"") 
  C<-""
  for (i in 1:length(B[[1]])){
    if (is.na(as.numeric(B[[1]][i]))){
      C <- paste(C,B[[1]][i],sep="")
    }
    else{
      break
    }
  }
  return(C)
}

all <- read.table("123.txt",head=T,sep="\t",as.is=TRUE)
A <- all[1:(nrow(all) - 2), 1]
for (i in 1:(nrow(all) - 2)){
  A[i] <- extract_letter(A[i])
}
A <- as.factor(A)
X <- all[1:(nrow(all) - 2),2]
Y <- all[1:(nrow(all) - 2),3]
pcoa1<-round(all[nrow(all),2],2)
pcoa2<-round(all[nrow(all),3],2)
ALL1<-data.frame(A,X,Y)


ggplot(ALL1,aes(x=X,y=Y,colour=A))+geom_point(alpha =.7, size=6)+scale_size_area()+scale_colour_brewer(type = "div", palette = "Dark2")+xlab(paste("PCoA1(",pcoa1,"%)",sep=""))+ylab(paste("PCoA2(",pcoa2,"%)",sep=""))+theme_classic()+geom_vline(xintercept = 0, color = 'black', size = 0.4, linetype = 4)+geom_hline(yintercept = 0, color = 'black', size = 0.4, linetype = 4)+theme(panel.grid = element_line(color = 'gray', linetype = 2, size = 0.1), panel.background = element_rect(color = 'black', fill = 'transparent'), legend.title=element_blank())
