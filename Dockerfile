FROM r-base
RUN apt-get update && apt-get install -y libcurl4-gnutls-dev libxml2-dev libssl-dev libmariadb-client-lgpl-dev libcairo2-dev ghostscript && apt-get clean
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("sva")'
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("minfi")'
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("RnBeads")'
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite("RnBeads.hg19")'
RUN Rscript -e 'source("https://bioconductor.org/biocLite.R"); biocLite(pkgs=c("minfiData","ChAMPdata","wateRmelon","FDb.InfiniumMethylation.hg19","ChAMP", "parallel","sandwich","lmtest","celltypes450","gap","ggplot2", "gdata","snpStats","GenomicRanges","DEXSeq","lumi","RnBeads.hg19","RnBeads","impute","illuminaio","wateRmelon","limma","methylumi","Biobase","IRanges","AnnotationDbi","MASS","IlluminaHumanMethylation450k.db","IlluminaHumanMethylation450kmanifest","CopyNumber450kData","DNAcopy"))'
RUN Rscript -e 'install.packages(c("Hmisc","devtools","MASS","lmtest","gplots","markdown","Cairo","knitr","doParallel","compareGroups","MatrixEQTL","plyr","dplyr","matrixStats","sandwich","ggplot2","glmnet","VennDiagram","parallel"))'
