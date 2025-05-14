# /dev binding causes singularity fail

This is a nextflow workflow that demonstrates that passing in `/dev/null`
as a file parameter to a nextflow process with singularity/apptainer causes the process to fail.

Something about binding the /dev directory breaks the process and causes it to fail

run `run_me_test.sh` in the directory you checked this out in to run the tests.

Referenced by https://github.com/nextflow-io/nextflow/issues/6072

Apptainer bug report here:

https://github.com/apptainer/apptainer/issues/2963
