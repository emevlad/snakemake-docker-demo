rule all:
    input:
        "result.txt"

rule make_result:
    output:
        "result.txt"
    shell:
        "./scripts/hello.sh > /dev/null"
