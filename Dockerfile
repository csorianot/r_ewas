FROM rocker/r-ver:4.0.2
LABEL maintainer="csoriano"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y git-core \
	libcairo2-dev \
	libcurl4-openssl-dev \
	libglpk-dev \
	libgmp-dev \
	libssl-dev \
	libxml2-dev \
	make \
	pandoc \
	pandoc-citeproc \
	zlib1g-dev
RUN ["install2.r", "arsenal", "BiocManager", "bit", "Cairo", "cellranger", "Ckmeans.1d.dp", "cluster", "corrplot", "curl", "data.table", "DBI", "dbplyr", "devtools", "doParallel", "dotCall64", "dplyr", "DT", "fastICA", "ff", "fields", "forcats", "foreach", "foreign", "Formula", "futile.logger", "gap", "ggforce", "ggplot2", "ggraph", "gplots", "gridExtra", "gtable", "gtools", "haplo.stats", "Hmisc", "igraph", "isva", "iterators", "JADE", "kableExtra", "knitr", "lattice", "littler", "lme4", "lmtest", "locfit", "maps", "markdown", "MASS", "Matrix", "MatrixEQTL", "MatrixModels", "matrixStats", "mgcv", "multcomp", "mvtnorm", "nlme", "plyr", "psych", "purrr", "qqman", "quadprog", "RColorBrewer", "Rcpp", "RcppArmadillo", "RcppEigen", "RCurl", "readr", "remotes", "reshape2", "rlang", "rmarkdown", "RSpectra", "sandwich", "scales", "shiny", "shinyFiles", "shinythemes", "SmartSVA", "SNPassoc", "spam", "statmod", "stringr", "survival", "TH.data", "tibble", "tidyr", "tidyselect", "tidyverse", "tinytex", "usethis", "VennDiagram", "XML", "xtable", "zip", "zoo"]
RUN ["installBioc.r", "AnnotationDbi", "AnnotationFilter", "AnnotationHub", "Biobase", "BiocFileCache", "BiocGenerics", "BiocParallel", "biomaRt", "Biostrings", "bumphunter", "ChAMP", "ChAMPdata", "coMET", "DelayedArray", "DESeq2", "DEXSeq", "DMRcate", "DNAcopy", "edgeR", "enrichplot", "FDb.InfiniumMethylation.hg19", "FEM", "gdsfmt", "genefilter", "GenomeInfoDb", "GenomeInfoDbData", "GenomicAlignments", "GenomicFeatures", "GenomicRanges", "GEOquery", "graph", "Gviz", "Illumina450ProbeVariants.db", "IlluminaHumanMethylation450kanno.ilmn12.hg19", "IlluminaHumanMethylation450kmanifest", "IlluminaHumanMethylationEPICanno.ilm10b2.hg19", "IlluminaHumanMethylationEPICanno.ilm10b4.hg19", "IlluminaHumanMethylationEPICmanifest", "illuminaio", "impute", "IRanges", "limma", "lumi", "marray", "MEAL", "MethylAid", "methylumi", "minfi", "missMethyl", "MultiDataSet", "org.Hs.eg.db", "preprocessCore", "qvalue", "reactome.db", "ReactomePA", "RnBeads", "ROC", "Rsamtools", "S4Vectors", "snpStats", "SummarizedExperiment", "sva", "TxDb.Hsapiens.UCSC.hg19.knownGene", "VariantAnnotation", "wateRmelon", "XVector"]
RUN ["installGithub.r", "brentp/celltypes450@dd9db20aae060ecc2535154a1b1fbac29c69a168", "elnitskilab/MethylToSNP@92a428286606e2b05be17f6f55be9d01c6334efe", "perishky/meffil@96fa2a49109495f84669ec98d04446ff5e2ea79f"]
WORKDIR /payload/
CMD ["R"]
