#!/bin/bash

BUCKET_NAME="my-2nd-s3-ec2-read-bucket-$(date +%s)"
aws s3api create-bucket --bucket $BUCKET_NAME --region us-east-1

echo "✅ S3 bucket created: $BUCKET_NAME"

