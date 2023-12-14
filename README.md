
This repository contains an implementation of the [GATK](https://gatk.broadinstitute.org/hc/en-us/articles/360035535932-Germline-short-variant-discovery-SNPs-Indels-) germline short variant discovery best practices pipeline using both the old school (BWA) and updated (DRAGEN) alignment strategies

## Installation

The pipeline can be installed by cloning the repo and installing required dependencies using conda and the provided env.yml file. 
e.g.
```
Conda create env malaria-gatk -r requirements.yml
```

I supplied some standard malaria genome resouces, because they were annoying to collect

## Usage

Update the required parameters in run_configs/default.config file and run the pipeline using
``````
nextflow process_snps.nx -c run_configs/default.config [ -with-report <report.html> -w <work_directory> ]
``````

Test data is supplied in the resources directory and can be run with

``````
nextflow process_snps.nx -c run_configs/test.config [ -with-report <report.html> -w <work_directory> ]
``````

## Output

Results of the pipeline will appear in the results directory (specified in config file).

Final filtered variant calls are provided in "filter_core_variant" folder. Intermediate results can be investigated in other folders. 
