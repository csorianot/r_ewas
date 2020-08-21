FROM r-base:4.0.0
RUN apt-get update && apt-get install -y libcurl4-gnutls-dev libxml2-dev libssl-dev libmariadb-dev \
    libglib2.0-dev libcairo2-dev ghostscript && apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install libxt-dev && \
     rm -rf /var/lib/apt/lists/*
RUN Rscript -e 'if (!requireNamespace("BiocManager", quietly = TRUE)); install.packages("BiocManager")
RUN Rscript -e 'BiocManager::install(pkgs=c("wateRmelon", "sva","minfi", "RnBeads","RnBeads.hg19", "FDb.InfiniumMethylation.hg19","ChAMP","sandwich","lmtest","gap","ggplot2", "gdata","snpStats","GenomicRanges", "DEXSeq","lumi", "impute","illuminaio","limma","methylumi"))'
RUN Rscript -e 'install.packages("devtools", dependencies = TRUE)'
RUN Rscript -e 'library(devtools); install_github("brentp/celltypes450")'  
RUN Rscript -e 'BiocManager::install(pkgs=c("Biobase","IRanges","AnnotationDbi","MASS","IlluminaHumanMethylation450k.db","IlluminaHumanMethylation450kmanifest","CopyNumber450kData","DNAcopy"))'
RUN Rscript -e 'install.packages(c("Hmisc","devtools","tidyverse","readxl","readr","ggpubr","MASS","lmtest","gplots","markdown","Cairo","knitr","doParallel","compareGroups","MatrixEQTL","plyr","dplyr","matrixStats","sandwich","ggplot2","glmnet","VennDiagram","parallel"))'
