#!/bin/bash
#$ -pe local 6
#$ -l mem_free=248G
#$ -l h_fsize=200G
#$ -o /dcs04/lieber/marmaypag/Allaway_mouseDlx_LIBD4125/FASTQ
#$ -m e
#$ -M michael.totty@libd.org

# load SRAtoolkit
module load sratoolkit

# change directory to ensure local. sra files are found
# otherwise, fastq-dump will re-download .sra files and take way longer
/dcs04/lieber/marmaypag/Allaway_mouseDlx_LIBD4125/raw-data/SRA

# -gzip created zipped file
# --spilt-files to seperate forward and reverse reads into seperate files
# -O output directory
fastq-dump --gzip --split-files SRR13402808 -O /dcs04/lieber/marmaypag/Allaway_mouseDlx_LIBD4125/raw-data/FASTQ