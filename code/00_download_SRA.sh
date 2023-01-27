#!/bin/bash

# load SRAtoolkit
module load sratoolkit

# --max-size to increase max download size
# -O to define output directory
# --force all if partial download exists and file is locked
prefetch SRR13402808  --max-size 100GB -O /dcs04/lieber/marmaypag/Allaway_P28_V1_LIBD4125/raw-data/SRA