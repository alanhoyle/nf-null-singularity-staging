nextflow run . --output_dir output/local_run_works_with_file
nextflow run . --output_dir output/local_run_works_with_dev_null --input /dev/null

nextflow run . -with-apptainer ubuntu:latest --output_dir output/apptainer_run_works_with_file
nextflow run . -with-apptainer ubuntu:latest --output_dir output/apptainer_run_fails_with_dev_null --input /dev/null