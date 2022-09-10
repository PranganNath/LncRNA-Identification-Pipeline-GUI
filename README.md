# LncRNA-Identification-Pipeline-GUI
This is under development pipeline for analysis of LncRNA from RNA-Seq data, now with zenity GUI



MANUAL

1. COMPONENTS
1.1 FASTP: For pre-processing of FASTQ files. Recommended version:
1.2 FASTQC: For quality checking of FASTQ files. Recommended version:
1.3 HISAT2: For indexing of reference genome and alignment of processed reads to reference genome. Recommended version:
1.4 SAMTOOLS: For interconversion of SAM and BAM file formats. Recommended version:
1.5 FEATURECOUNTS: For quantification of gene counts. Recommended version:
1.6 STRINGTIE: For assembly of transcripts and merging. Recommended version:
1.7 GFFREAD: For interconversion of GTF and FASTA file formats. Recommended version:
1.8 CPC2: For coding potential analysis of transcripts. Recommended version:
1.9 NCBI TOOLKIT: For running BLAST against known transcripts. Recommended version:
1.10 SALMON: For quantification of transcripts. Recommended version:
1.11 ZENITY: For GUI. Recommended version:
1.12 R: For various statistical analyses. Recommended version:
1.13 TxIMPORT(R): For importing and normalizing SALMON quantification files. Recommended version:
1.14 DESeq2(R): For differential expression analysis and generation of plots. Recommended version:
1.15 LNC-TAR: For predicting LncRNA-mRNA interactions. Recommended version:
1.16 miRanda: For predicting LncRNA-miRNA interactions. Recommended version:
1.17 CAPSULE-LPI: For predicting LncRNA-protein interactions. Recommended version:
1.18 RNAFOLD: For predicting secondary structures of transcripts. Recommended version:
1.19 SEEKR: For functional annotation of novel transcripts. Recommended version:

2. INSTALLING THE PIPELINE
- Make sure you have zenity installed in your system. Currently the GUI version only supports the use of zenity as a GUI platform.
- Download the files 'GUI_Alpha_6_installer.sh' and 'GUI_Alpha_6_installer.txt' into a working directory.
- Run the script 'GUI_Alpha_6_installer.sh' by opening your terminal in the working directory and entering "bash GUI_Alpha_6_installer.sh" 
- Make sure you have an active internet connection and admin privileges of your current system.
- Please enter your system superuser password whenever required.
- Please assign a working directory for the pipeline, when required.
- Please make sure your proxy settings allow you connection to the aptitude (APT) repository.
- All the software and packages required for running the pipeline will be installed in your system.
- Please refer to the RUNNING THE PIPELINE section for help regarding running the pipeline.

3. RUNNING THE PIPELINE
- Make sure you have zenity installed in your system. Currently the GUI version only supports the use of zenity as a GUI platform.
- Download the files 'GUI_Alpha_6.sh' into your working directory, as specified earlier.
- Run the script 'GUI_Alpha_6.sh' by opening your terminal in the working directory and entering "bash GUI_Alpha_6.sh"
- The GUI should guide you along with selection of input files and binaries.
- The progress bar will give you a graphical overview of the pipeline progress.
- A complete run of the pipeline with 3 human paired-ended case-control samples will take around 8 hours on a 20 threads machine. Please be patient.
- The shell, alternatively will give you the details of the tasks running at the time.
- After the completion of the run, a folder with the run name assigned by you, will be created in your $HOME directory. All the generated files can be found here.
- Please refer to the RESULTS section for help regarding interpretation of the pipeline results.

4. INPUT FILES
- Raw reads (.FASTQ.gz)
- Reference genome (.FA)
- Reference annotation (.GTF)
- Reference trqanscriptome (.FA)
- Known LncRNAs (.FA)
- Binaries directory (bin)
