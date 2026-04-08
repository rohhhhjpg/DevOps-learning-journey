■ Errors Faced & Fix

■ Error 1 — AWS Command Not Found

Error
aws: command not found
When It Happened

While running the script:
./aws-resource-tracker.sh

All AWS commands failed

---

■ Reason

AWS CLI was not installed in the Ubuntu server.

Important understanding:

I logged into Ubuntu using:

ssh ubuntu@ip-address

This means:

Script runs inside remote Ubuntu server
AWS CLI must be installed inside server
Installing AWS CLI in local machine will not work

---

■ First Attempt (Failed)

Tried installing using:
sudo apt install awscli

But received error:

Package awscli is not available

---

■ Why sudo apt install awscli Didn't Work

Because:

* Some Ubuntu cloud images don't include awscli package
* apt repositories may not contain latest AWS CLI
* AWS recommends installing AWS CLI v2 manually

So instead of using apt, we used official AWS installation method

---

■ Fix — Installing AWS CLI Manually

Step 1 — Install Dependencies
sudo apt update
sudo apt install unzip curl -y

Why unzip and curl ?
curl is Used to download AWS CLI package from internet

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip

curl = download tool

---

unzip

AWS CLI package is downloaded as zip file

So we must extract it:
unzip awscliv2.zip

unzip = extract zip file

Step 2 — Download AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip

This downloads AWS CLI installer.

Step 3 — Extract AWS CLI
unzip awscliv2.zip

Extracts AWS CLI installation files.

Step 4 — Install AWS CLI
sudo ./aws/install

Installs AWS CLI.

Step 5 — Verify Installation
aws --version

Output:

aws-cli/2.x.x

AWS CLI installed successfully.

---

■ Error 2 — Huge JSON Output

Problem

Running:
aws ec2 describe-instances

Output was too large and difficult to read.

AWS returns JSON formatted output.

---

■ Fix — Using jq

Used:

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

This filtered only:

Instance ID

---

■ What is jq ?

jq is a JSON processor

Used to:

* Filter JSON output
* Extract required values
* Make scripts cleaner

---

■ Why jq is Important

Without jq:
Huge JSON output

With jq:
Clean output

Better for:

* Automation
* Monitoring
* DevOps scripting

---

■ Error 3 — Permission Denied
Error
Permission denied

While running script:
./aws-resource-tracker.sh

■ Reason
Script did not have execute permission.
Linux security requires execute permission.

---

■ Fix

Used:

chmod 777 aws-resource-tracker.sh

This granted:

* Read
* Write
* Execute

For:

* User
* Group
* Others

---

■ Better Practice

Instead of 777:
chmod +x aws-resource-tracker.sh

Used in production environments.

---

■ Error 4 — Cron Job Understanding

Initially confusion:

* Where to add shebang
* Where to add PATH
* How cron works

---

■ Fix

Shebang added inside script:

#!/bin/bash

Cron entry added:

0 18 * * * /home/ubuntu/aws-resource-tracker.sh

This runs:

Every day at 6 PM

---

■ Learning From Errors

From this project I learned:

* Installing AWS CLI manually
* Using curl and unzip
* Using jq for JSON parsing
* Linux permissions
* Cron scheduling
* DevOps troubleshooting

---
