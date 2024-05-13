#!/bin/bash -v

bucket=$1

echo "=============================="
echo "     List bucket $bucket      "
echo "=============================="

# Exit if bucket is not specified

if [[ -z $1 ]]
then
    echo -e "The available buckets from the current AWS account are: \n"
    aws s3api list-buckets --query 'Buckets[*].[Name]' --output text
    echo -e "\n"
    exit 1
fi

