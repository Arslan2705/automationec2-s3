#!/bin/bash

set -e  # Stop on error

INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0c02fb55956c7d316"
KEY_NAME="Arslan_key"
SECURITY_GROUP_ID="sg-00068f2b6298d2f17"

INSTANCE_NAME="Infra-as-a-code-Instance"
REGION="us-east-1"            # 🔥 Ensure correct region

echo "Launching EC2 instance..."

aws ec2 run-instances \
  --image-id "$AMI_ID" \
  --instance-type "$INSTANCE_TYPE" \
  --key-name "$KEY_NAME" \
  --security-group-ids "$SECURITY_GROUP_ID" \
  --subnet-id "$SUBNET_ID" \
  --region "$REGION" \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]"

echo "✅ EC2 instance '$INSTANCE_NAME' launched successfully."
