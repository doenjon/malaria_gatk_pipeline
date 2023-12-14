#!/bin/bash 
#SBATCH --job-name=nxtflwhd_mal
#SBATCH --time=24:00:00
#SBATCH -p normal,ellenyeh,owners
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=4G
#SBATCH --output=slurm_logs/nextflow-head-%j.out


source ~/.bashrc
conda activate env/
# export NXF_OPTS="-Xmx30g"
nextflow process_snps.nx -with-report reports/test_run -c run_configs/test_run.config 
