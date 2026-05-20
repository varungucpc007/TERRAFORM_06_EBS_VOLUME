# TERRAFORM_06_EBS_VOLUME

## Project Overview

This Terraform project creates an AWS EBS volume and attaches it to an EC2 instance. It demonstrates how block storage works with EC2.

## What This Project Creates

- One EC2 instance
- One EBS volume
- EBS volume attachment
- Output values for instance and volume details

## Technologies Used

| Technology | Purpose |
| --- | --- |
| Terraform | Infrastructure as Code |
| AWS EC2 | Virtual server |
| AWS EBS | Block storage |

## Recommended Files

```text
TERRAFORM_06_EBS_VOLUME/
├── provider.tf
├── ec2.tf
├── ebs.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Important EBS Concept

An EBS volume must be created in the same Availability Zone as the EC2 instance where it will be attached.

Example:

```text
EC2 Availability Zone: ap-south-1a
EBS Availability Zone: ap-south-1a
```

## Prerequisites

- AWS account
- Terraform installed
- AWS CLI configured
- Valid AMI ID
- Security group if SSH access is needed

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

Type `yes` when prompted.

## Verify EBS Attachment

Check in AWS Console:

- EC2 Dashboard
- Volumes
- Instance storage details

Or use:

```bash
aws ec2 describe-volumes
```

## Destroy Resources

```bash
terraform destroy
```

## Important Notes

- EBS volumes can create charges even when EC2 is stopped.
- Delete unused EBS volumes after testing.
- Keep EC2 and EBS in the same Availability Zone.
