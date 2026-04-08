#!/bin/bash

######################
# Aurthor: Rohith
# Date: 08th-Apr
#
# Version:1
#
# This script will report the AWS resource usage
######################


# AWS s3
# AWS Ec2
# AWS Lambda
# AWS IAM Users
set -x

# List s3 buckets
echo "print list of s3 buckets"
aws s3 ls > ResourceTracker

# List Ec2 Instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> ResourceTracker

# List AWS Lambda functions
echo "Print list of lambda functions"
aws lambda list-functions >> ResourceTracker

# List AWS IAM Users
echo "print list of IAM Users"
aws iam list-users >> ResourceTracker
 
