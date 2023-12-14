#!/bin/bash 
#SBATCH --job-name=nxtflwhd_mal
#SBATCH --time=48:00:00
#SBATCH -p normal,ellenyeh,owners
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=4G
#SBATCH --output=slurm_logs/nextflow-head-%j.out


source ~/.bashrc
conda activate env/
# export NXF_OPTS="-Xmx30g"
nextflow process_snps.nx -c run_configs/default.config --prefix $1 --r1 $2 --r2 $3 -resume $4 # -name $1 # -resume $1