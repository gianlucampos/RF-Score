#!/usr/bin/env Rscript
d=as.matrix(read.csv('pointb.csv'))
c="sdev"
xylim=c(min(d[,c]),max(d[,c]))
tiff("pointb.tiff", compression="lzw")
par(cex.lab=1.3,cex.axis=1.3,cex.main=1.3)
plot(d[1:51,c],d[52:102,c],xlim=xylim,ylim=xylim,xlab="MLR::Vina",ylab="RF::VinaElem",main="Scatter plot of SD of models 2 and 4 trained on PDBbind v2012\nrefined set (N=2897) and tested on 10 5-fold partitions of\nPDBbind v2013\\v2012 refined set (N=382)")
abline(0, 1)
dev.off()