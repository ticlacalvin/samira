#!/usr/bin/env bash

#this script combines the 3 provided names to create a bucket in us-east-1

echo " here are the steps"

echo -n " name1: "
read -r name1

echo -n " name2: "
read -r name2

echo -n " name3: "
read -r name3

echo -n " answers: "

echo
my_buckettest=$name1-$name2-$name3
echo "$my_buckettest" | tr -d '"'
aws s3 mb s3://"$my_buckettest" 







#my-bucket=`aws s3 mb s3://"$name1$name2$name3" | tr -d '"'`
#echo $my-bucket









#this command delete a specified bucket
#aws s3api delete-bucket --bucket volbctag --region us-east-1
#aws s3api create-bucket --bucket my-bucket --region ap-south-1 --create-bucket-configuration LocationConstraint=ap-south-1

