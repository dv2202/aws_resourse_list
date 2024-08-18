# AWS Resource List Script

## Overview

This shell script lists all resources in your AWS account for a specified region and service. It supports a wide range of AWS services, making it a versatile tool for managing and auditing your AWS infrastructure.

### Author
**Devansh Vishwakarma**

### Version
**v0.0.1**

## Supported AWS Services

The script currently supports the following AWS services:

1. EC2 (Elastic Compute Cloud)
2. S3 (Simple Storage Service)
3. RDS (Relational Database Service)
4. DynamoDB
5. Lambda
6. EBS (Elastic Block Store)
7. ELB (Elastic Load Balancing)
8. CloudFront
9. CloudWatch
10. SNS (Simple Notification Service)
11. SQS (Simple Queue Service)
12. Route53
13. VPC (Virtual Private Cloud)
14. CloudFormation
15. IAM (Identity and Access Management)
16. KMS (Key Management Service)

## Prerequisites

Before using this script, ensure you have the following:

- **AWS CLI**: The AWS Command Line Interface must be installed. If it’s not installed, you can follow the [AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
- **AWS CLI Configuration**: The AWS CLI should be configured with your credentials. If it’s not configured, run `aws configure` to set it up.

## Usage

```bash
./aws_resource_list.sh <region> <service_name>
```

### Examples

To list all EC2 instances in the `us-east-1` region:

```bash
./aws_resource_list.sh us-east-1 EC2
```

To list all S3 buckets in the `us-west-2` region:

```bash
./aws_resource_list.sh us-west-2 S3
```

## Error Handling

The script includes basic error handling to check:

1. If the required arguments are passed.
2. If the AWS CLI is installed.
3. If the AWS CLI is configured.

If any of these conditions are not met, the script will exit with an appropriate message.

## Contributions

Feel free to fork this repository and contribute enhancements or additional features. Pull requests are welcome!

## License

This script is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
