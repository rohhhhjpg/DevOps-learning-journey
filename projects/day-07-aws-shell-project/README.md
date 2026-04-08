■ Day 07 — AWS Resource Tracker (Shell Project)
■ Date

08-04-2026
---

■ Topics Learned

* AWS CLI commands
* Shell scripting automation
* JSON parsing using jq
* Redirecting output to file
* Automating AWS resource monitoring
* Cron job scheduling
* Linux automation
* Debugging shell script errors

---

■ Commands Learned

```bash
aws s3 ls
aws ec2 describe-instances
aws lambda list-functions
aws iam list-users
jq
chmod
crontab -e
crontab -l
echo
>>
>
```
---

■ Script Created

AWS Resource Tracker Script

```bash
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
```   
---

■ What is jq ?

jq is a lightweight JSON processor used to parse JSON output.

AWS CLI commands return large JSON formatted output.

Example:

aws ec2 describe-instances

This returns a huge JSON output.

Using jq:

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

This filters only:

Instance ID

---

■ Why We Use jq

* Clean output
* Easy filtering
* Script friendly
* DevOps automation
---

■ Cron Integration

Cron is used to schedule scripts automatically.

Cron Entry:

```bash
0 18 * * * /home/ubuntu/aws-resource-tracker.sh
``` 
This runs:

Every day at 6 PM

---

■ What is Cron ?

Cron is a Linux scheduler used to automate tasks.

Used for:

* Automation
* Monitoring
* Backups
* DevOps scripting

---

■ Cron Format

```bash
* * * * *
| | | | |
| | | | + Day of week
| | | + Month
| | + Day
| + Hour
+ Minute
``` 
---

■ Cron Examples

Run every 5 minutes
```bash
*/5 * * * *
``` 
Run every hour
```bash
0 * * * *
``` 
Run every day 6 PM
```bash
0 18 * * *
```
---

■ Use Case

Monitor AWS resources automatically

Script collects:

* S3 Buckets
* EC2 Instances
* Lambda Functions
* IAM Users

Output stored in:
ResourceTracker
---

■ What I Learned

* Shell scripting automation
* AWS CLI usage
* jq JSON parsing
* Cron scheduling
* Script permissions
* Output redirection
* DevOps automation
---

■ Learning Outcome

* Shell scripting
* AWS automation
* Cron scheduling
* DevOps scripting
---

■ Project Summary

This is my first DevOps shell scripting project.

Automated AWS resource monitoring using:

* Shell scripting
* AWS CLI
* jq
* Cron
---

■ First DevOps Shell Script Project Completed

AWS Resource Tracker
Shell Script Automation
Cron Scheduling

First Project Completed ✅
