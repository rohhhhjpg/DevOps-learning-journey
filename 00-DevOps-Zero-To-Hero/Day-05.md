# ■ Day 05 — DevOps Zero To Hero

## ■ Date

[31-03-2026]

---

## ■ Video Covered

- Abhishek DevOps — Day 01
- Topic: [AWS CLI Whole Guide and Walkthrough]

---

## ■ Topics Learned

- How to connect AWS using CLI
- command after creating Key pair
- Download AWS CLI
- Configure part

---


## ■ Commands Practiced (If Any)

Aws cli connect using Mobaxterm

- copy ipv4 public address and paste in mobaxterm and advance settings paste the private key downloaded.

To connect  using command prompt or terminal

- Ssh -i /Users/rohxp/Downloads/test111.pem ubuntu@ipv4 public ip (location of the private key, private key name and username with ipv4) address. 
- If permission denied
- Chmod 600 key.pem(location and key) so that it will allow us inside. (Won't usually works in window's terminal)



AWS CLI
After installing aws cli to check whether it is installed or not
- Aws --version
Where aws (tells you the location of aws)

To configure our aws using cli
- Aws configure (command)
Where you need to enter the secret key and code for accessing our aws through cli.

User - security credentials, 
Create access keys in aws and copy and paste it in the cli for automation using command line interface.


Another way is cloud formation template.

