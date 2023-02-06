#!/bin/bash
#$ -l mem_free=32G
#$ -l h_vmem=32G
#$ -l h_fsize=200G
#$ -o logs/s01_convert_SRA_to_FASTQ.txt
#$ -e logs/s01_convert_SRA_to_FASTQ.txt
#$ -m e
#$ -M michael.totty@libd.org

echo "**** Job starts ****"
date

echo "**** JHPCE info ****"
echo "User: ${USER}"
echo "Job id: ${JOB_ID}"
echo "Job name: ${JOB_NAME}"
echo "Hostname: ${HOSTNAME}"
echo "Task id: ${SGE_TASK_ID}"

# load SRAtoolkit
module load sratoolkit

# -gzip created zipped file
# --spilt-files to seperate forward and reverse reads into seperate files
# -O output directory
fasterq-dump --split-files /dcs04/lieber/marmaypag/Shi_mouseAMY_LIBD4125/raw-data/SRA/SRR13402808 -O /dcs04/lieber/marmaypag/Allaway_mouseDlx_LIBD4125/raw-data/FASTQ

echo "**** Job ends ****"
date