#! /usr/bin/bash

rm -rf output

echo running local executor tests:

nextflow run . --output_dir output/local_run_works_with_file
nextflow run . --output_dir output/local_run_works_with_dev_null --input /dev/null

echo running docker executor tests:

nextflow run . -with-docker ubuntu:latest --output_dir output/docker_run_works_with_file
nextflow run . -with-docker ubuntu:latest --output_dir output/docker_run_works_with_dev_null --input /dev/null

echo running apptainer executor tests:

nextflow run . -with-apptainer ubuntu:latest --output_dir output/apptainer_run_works_with_file
nextflow run . -with-apptainer ubuntu:latest --output_dir output/apptainer_run_fails_with_dev_null --input /dev/null

