#!/bin/bash

bucket_name=('dev2022gx')

#for bucketname in "$bucket_name"
for bucketname in ${bucket_name[*]}

do
	echo "check every name in new line if already exists"
	aws s3api wait bucket-exists --bucket $bucket_name

#in case that name is not owned then;

	echo "creating a bucket with a name from the list"
       	aws s3 mb s3://"$bucket_name"
done










		
		
