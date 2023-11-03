nextflow run nf-core/rnaseq -revision 3.12.0 \
	--input inputs/fastqfiles/samplesheet/samplesheet.csv \
	--outdir out_mapping \
	-profile docker \
	--gtf $PWD/genome_references/Homo_sapiens.GRCh38.110.gtf.gz \
	--fasta $PWD/genome_references/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa.gz \
	--max_memory 50.GB
