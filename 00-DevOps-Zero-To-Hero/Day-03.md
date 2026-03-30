# ■ Day 01 — DevOps Zero To Hero

## ■ Date

[31-03-2026]

---

## ■ Video Covered

- Abhishek DevOps — Day 03
- Topic: [Virtual Machines Part-1]

---

## ■ Topics Learned

- Virtual Machines (VM)
- What is server
- physical or virtual Hypervisor
- How to create VM
- Real world example

---


## ■ Notes 

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/42678f01-7fae-4e8a-83a1-dc40ff9b8c22" />

1 Acre of land and we are using only half of it, so with the half we are building another property and getting rent and making efficient use of the space

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/3263935a-e0b7-4374-b81c-9b8c0c6f834b" />

So in this reference, There is a example.com and that has lots of physical servers installed and each has 100 gb of storage. 

By suing only 10 gb in a entire resource the remaining 90 are getting wasted and that brings inefficiency.

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/97a4f4ef-9a26-47a5-a4a3-1c0b4833c722" />

To avoid this we are having something called hypervisors.

Hypervisor is a software that can install virtual machines on your bare metal or physical servers

So here in this server one, With the help of hypervisor we are creating 5 different virtual machines by logical isolation

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/88e94cf3-627d-4452-9d8c-93f846626330" />

 so here an example of data centre

Cloud providers like ibm or hp have millions of physical servers installed in a data centre

we are basically creating virtual environments that function as virtual computer systems

we re only breaking them logically

has their own CPU memory and hardware

each we have separate hardwares they don't depend on others

<img width="3216" height="1485" alt="image" src="https://github.com/user-attachments/assets/e0f73b9a-8fe6-4874-a8ea-3ca53aefd4d4" />

So here’s a AWS server which is requested by using by choosing the region, what they will do is they will install a hyper visor in a physical server based on our requirements and they will give the access for us to work in that

Cloud providers what they will do they will install millions of physical servers in a data centre our request (VM's, EC2) will sent to one of the providers and they will provide by seeing our region and allocate a virtual machine from any one of the physical server. Every physical servers have preinstalled hypervisors

Servers are installed using RACKS where multiple physical servers will be stored in a data centre

This is how hyper visor increase the efficiency or creating virtual machines.
 
This is how the concept of virtualisation works.


