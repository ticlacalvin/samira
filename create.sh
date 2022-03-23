#!/bin/bash

echo "SCRIPT TO CREATE A BUCKET"

echo -e "\n"
echo "enter 1st string"
read string_1
echo "enter 2nd string"
read string_2
echo "enter 3rd string"
read string_3
echo "enter REGION"
read Region

R_D=${RANDOM:1:2}

bucket_to_be_created=$string_1-$string_2-$string_3
#echo "a bucket will be created with a name:$bucket_to_be_created"

if [ -z $Region ]; then Region=us-east-1 && aws s3api create-bucket --bucket $bucket_to_be_created --region $Region; else aws s3api create-bucket --bucket $bucket_to_be_created --create-bucket-configuration LocationConstraint=$Region; fi


