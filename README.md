# null singularity fail

This is a nextflow workflow that demostrates that passing in `/dev/null`
as a file parameter to a nextflow process with singularity/apptainer causes the process to fail.

Something about staging the /dev directory breaks the process and causes it to fail

run `run_me_test.sh` in the directory you checked this out in to run the tests.
