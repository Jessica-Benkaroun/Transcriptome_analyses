#bioprojects on hommarus americanus
https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=6706
#fetch SRA runs
https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/#download-sequence-data-files-usi
cd sratoolkit folder
cd bin
./tool
./prefetch filename.sra
#alternatively use a liste of sra datasets:
./prefetch --option-file SraAccList.txt
#to convert sra files in fastq format:
./fasterq-dump --split-files SRR11180057.sra
