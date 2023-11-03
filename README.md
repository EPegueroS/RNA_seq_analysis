# RNA_seq_analysis
Analysis of a subset of RNA-seq samples from Schmidt et al., 2018


# Depencencies
conda
linux environment 


# Clone the repository

# Create and activate the conda environment 
conda env create --file nextflow_conda_env/env_nf.yml

conda activate env_nf


cd pipelines 

# Download the FASTQ files using the ids in inputs/ids.csv
nextflow run nf-core/fetchngs -revision 1.11.0 -profile docker --input inputs/ids.csv --outdir inputs/fastqfiles --nf_core_pipeline rnaseq


