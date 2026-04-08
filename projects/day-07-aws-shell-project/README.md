# ■ Day-07 — AWS Usage Report using Shell Script

## ■ Project Name

AWS Usage Report using Shell Script

---

## ■ Project Description

This project creates a shell script that reports AWS resource usage.

The script helps DevOps engineers monitor:

* EC2 Instances
* S3 Buckets
* Lambda Functions
* IAM Users

---

## ■ Tools Used

* AWS CLI
* Shell Scripting
* Linux

---

## ■ Prerequisites

* AWS CLI Installed
* AWS Configured
* Bash Shell

---

## ■ Shell Script

```bash
#!/bin/bash

echo "Print list of EC2 instances"
aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId'

echo "Print list of S3 Buckets"
aws s3 ls

echo "Print list of Lambda functions"
aws lambda list-functions

echo "Print list of IAM Users"
aws iam list-users
```

---

## ■ How to Run

Make executable:

```bash
chmod +x aws_usage.sh
```

Run script:

```bash
./aws_usage.sh
```

---

## ■ Output

Displays:

* EC2 Instances
* S3 Buckets
* Lambda Functions
* IAM Users

---

## ■ Use Case

DevOps engineers use this script to:

* Monitor AWS resources
* Audit infrastructure
* Automate reporting

---

## ■ Learning Outcome

* AWS CLI commands
* Shell scripting automation
* DevOps monitoring basics

---

## ■ Notes

This is a basic automation script for AWS resource monitoring.
