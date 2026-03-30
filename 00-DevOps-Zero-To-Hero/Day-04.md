# ■ Day 04 — DevOps Zero To Hero

## ■ Date

[31-03-2026]

---

## ■ Video Covered

- Abhishek DevOps — Day 01
- Topic: [AWS & Azure - How to Create Virtual Machines]

---

## ■ Topics Learned

- What are all the ways to create virtual machine
- AWS API
- AWS CDK (Cloud Development Kit)
- Terraform
- What is Hybrid Cloud Pattern?

---


## ■ Notes

Virtual Machines part 2

Process of creating a instance or virtual machine

(You) Open AWS console on favourite browser- make a request - get virtual machine as output from AWS (with IP address and all the other credentials to login)

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/6f6777b1-2c10-4eda-a91d-c0104b220249" />

So in a manual way we create AWS EC2 by requesting and getting the output. But what if we need to create 100

We can create in a manual way but it’s not DevOps. DevOps is all about efficiency.

To create 100 Virtual Machines we need automation.

Here comes the concept of AWS API.

Using this we can write a script - It will make a call to AWS EC2 API, And create the number of virtual machines we requested. (Now it increases efficiency make sense)

So in this script we send a request to AWS EC2 API, now it checks whether the script is valid, Authenticated and authorised. After this it sends back the no of instances we requested.

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/438b5e29-387d-49c2-a667-a463abd1cc18" />

There are lot of ways we can do scripting.
	1. AWS CLI
	2. AWS API (BOTO 3 python)
	3. AWS CFT (Cloud Formatting Template)
	4. Terraform (open source)
	5. AWS CDK (Cloud Development Kit)

Terraform can be used in multiple cloud providers which is AWS, GCP, Azure.

IN AN INTERVIEW

What is the tool which you use for infrastructure automation?

	1. Don’t do something which is always famous tool, look at your organisation
	2. CDK has more benefits over terraform.
	3. CDK is inbuilt tool of AWS, so we get initial support for whatever the new service which is launched by AWS.

Why not terraform and where we will use terraform?

Terraform is a open source. It is used in Hybrid cloud pattern adapted places. 

What is Hybrid Cloud Pattern?

In a organisation specific AI and ML alone operated in Google cloud, And some others in AWS. This is called Hybrid Cloud Pattern. (Using different cloud platforms for different instances to improve efficiency)

Now practical (Create instance in EC2 service in AWS).

---



