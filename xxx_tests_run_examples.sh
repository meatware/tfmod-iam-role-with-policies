#!/bin/bash

set -e


if [ "$#" -ne 1 ]; then
    echo "USAGE: ./xxx_tests_run_examples.sh \${YOUR_TERRAFORM_EXEC}"
    echo "e.g > ./xxx_tests_run_examples.sh terraform_v1.0.6"
    exit 0
fi

terraform_exec=$1

EXAMPLE_DIRS=$(ls -d examples/*)


for eg_dir in $EXAMPLE_DIRS; do
    cd $eg_dir
        rm -rf .terraform .terraform.lock.hcl \
            && $terraform_exec init \
            && $terraform_exec validate \
            && $terraform_exec apply -input=false -no-color -auto-approve
    cd -
done