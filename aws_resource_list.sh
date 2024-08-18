#!/bin/bash

#This script will list all the resources in the AWS account
#Author: Devansh Vishwakarma
#Version: v0.0.1

##############################################################
#
#Following are the supported AWS services by the script
# 1. EC2
# 2. S3
# 3. RDS
# 4. DynamoDB
# 5. Lambda
# 6. EBS
# 7. ELB
# 8. CloudFront
# 9. CloudWatch
# 10. SNS
# 11. SQS
# 12. Route53
# 13. VPC
# 14. CloudFormation
# 15. IAM
# 16. KMS
#
# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 EC2
##############################################################

#Check if the required arguments are passed
if [ $# -ne 2 ]; then
    echo "Usage: $0 <region> <service_name>"
    echo "Example: $0 us-east-1 EC2"
    exit 1
fi

#Check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it before running the script."
    exit 1
fi

#Check if the AWS CLI is configured 
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure it before running the script."
    exit 1
fi


#Execute the AWS CLI command based on the service name
case $2 in
    EC2)
        aws ec2 describe-instances --region $1
        ;;
    S3)
        aws s3api list-buckets --region $1
        ;;
    RDS)
        aws rds describe-db-instances --region $1
        ;;
    DynamoDB)
        aws dynamodb list-tables --region $1
        ;;
    Lambda)
        aws lambda list-functions --region $1
        ;;
    EBS)
        aws ec2 describe-volumes --region $1
        ;;
    ELB)
        aws elb describe-load-balancers --region $1
        ;;
    CloudFront)
        aws cloudfront list-distributions --region $1
        ;;
    CloudWatch)
        aws cloudwatch list-metrics --region $1
        ;;
    SNS)
        aws sns list-topics --region $1
        ;;
    SQS)
        aws sqs list-queues --region $1
        ;;
    Route53)
        aws route53 list-hosted-zones --region $1
        ;;
    VPC)
        aws ec2 describe-vpcs --region $1
        ;;
    CloudFormation)
        aws cloudformation list-stacks --region $1
        ;;
    IAM)
        aws iam list-users --region $1
        ;;
    KMS)
        aws kms list-keys --region $1
        ;;
    *)
        echo "Invalid service name. Please provide a valid service name."
        exit 1
        ;;
esac


# End of the script