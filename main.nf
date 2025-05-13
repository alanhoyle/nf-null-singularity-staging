params.input = "input.txt"
params.output_dir = "output"


process print_input {
    container 'ubuntu:latest'
    publishDir params.output_dir, mode: 'copy'

    input:
    path input_file

    output:
    path "output.txt"

    script:
    """
    echo "Input file contents:"
    cat $input_file
    echo "stage dir contents:" > output.txt
    ls -l >> output.txt
    echo "" >> output.txt

    echo "input file contents:" >> output.txt
    cat $input_file >> output.txt
    """
}

workflow {
    input_file = file(params.input)

    print_input(input_file)
}
// This is a simple Nextflow script that reads an input file and prints its contents to the output file.