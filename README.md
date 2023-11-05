# RNA_seq_analysis

Analysis of a subset of RNA-seq samples from Schmidt et al., 2018

# Dependencies

conda  
linux environment

# Clone the repository

# Create and activate the conda environment

```bash
conda env create --file nextflow_conda_env/env_nf.yml

conda activate env_nf

cd pipelines
```

# Download the FASTQ files

It uses the ids in inputs/ids.csv

```bash
nextflow run nf-core/fetchngs \
  -revision 1.11.0 \
  -profile docker \
  --input inputs/ids.csv \
  --outdir inputs/fastqfiles \
  --nf_core_pipeline rnaseq
```

# Download the genome references

Will download the primary alignment from ENSEMBL GRCh38

```bash
bash genome_references/download_references.bash
```

# Run the mapping

This step will fetch the nf-core/rnaseq pipeline and use it to map the reads. Using STAR.

```bash
bash run_rnaseq.bash
```

# DEG analysis

The analysis is under the directory "DEG_analysis"
