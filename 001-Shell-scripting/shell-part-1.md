# ■ Day 01 — Shell Scripting

## ■ Date

[01-04-2026]

---

## ■ Video Covered

Shell Scripting — Part 1

---

## ■ Topics Learned

* Purpose of shell scripting
* How to create a file?
* How to list the files and folders?
* man command in linux
* (vi/vim) How to write a file?
* Difference between touch and vim?
* purpose of shebang
* Insert command in linux
* How to execute a shell script?
* How to grant permissions in linux
* How to write a shell script and execute the file
* Role of shell scripting inside DevOps
* Monitoring shell commands

---

## ■ Commands Learned

```
touch - create a file
ls - list files
ls -ltr - view the file with time stamps
man - manual (suffix with any command it will give the details of the command)
vi - open the file
vim - Not available by default we have to install it (open the file)
#!/ - shebang
echo - print the text
sh/./ - executes the shell script
cat - view the contents of the file in terminal itself
chmod - grant permissions
history - all the commands we entered
pwd - present working directory
mkdir - make directory
cd - change directory
rm -rf - remove directory along with files
nproc - To list the no of cpu's in the machine
free - to check the memory
top - Identify all the process running in  our machine
df - list all the available storage in the system

```

---

## ■ Script Created

- How to print the name inside script.
  #!/bin/bash

  echo "My name is Rohith"

  :wq! (after this we can use vi or cat command to view the contents inside the file)

---

- The shell script creates a directory and place two files in it
  #!/bin/bash

  # Create a directory named rohit
  mkdir rohit

  # places two files inside directory
  cd rohit
  touch firstfile secondfile

  # save the file
  :wq!

  # Execute the file in termianl
  ./script-name.sh or sh script-name.sh

---

## ■ Use Case

print the name inside script
automation creates a directory and place two files in it

---

## ■ What I Learned (Notes)

* Why shell scripting? It is a process to automate day to day activities by using shell commands.

* How to write a shell script? By creating a file. if its a shell file the extension of the **file should be .sh** (first-shell-script.sh)

* **man** commands are used to have the manual of the commands which we are using in the scripts.

* To write a shell script in the file - you have to open the file.  - use **vim or vi**
* **vim** or **vi** can create the files directly and write in it.

* Then whats the difference between of touch and vi/vim ?
* **touch** command is mandatory for automation.
* when you want to create 100'sof files at the same time, you dont need to open the file right so in that case touch is useful.
* vi or vim commands basically opens all the file and it will slow the process.
* after opening a file press **i** - insert mode and start writing in the file

* #!/ -shebang
* #!/bin/ksh /bash/sh/dash - these are some of the most used things.
* What is the first line everybody writes in a shell script? **shebang**
* You have to specify your kernel that these are the executable that i want to use for my shell script. ex: bash/ksh/sh/dash
* Bash is something that is most widely used. more easy way of writting scripts.
* **difference between #!/bin/sh vs #!/bin/bash ?**
* #!/bin/sh - using **linking** concept (not covered) the request is taken by sh and returned to bash. always it will not be linked to bash , now systems are linked sh with #!/bin/dash also.
* **#!/bin/bash - Always use this when you write a script.**

* **How to write a file?**
* once you create a file, press esc, use I for insert mode and start writing commands inside that.
* To save the file after the script press esc , press :q! for quit the file
* press :wq! for saving the file.

* **How to execute the file?**
* Two options 1) **sh** first-shell-script.sh (or) 2) **./**first-shell-script.sh
* Permission Denied. Why Linux is all about security.
* when you execute linux asks who can execute , so we need to grant permissions before execute the file.

* **Granting permissions**
* **chmod**
* ch/mod ch - change (so we are changing the permissions using chmod command)
* chmod has three categories
* root permissions 
* group permissions
* user (you) permissions

* user (owner), group , everyone
* 4 - Read
* 2 - Write
* 1 - Execute

* Using numbers we can grant access with chmod
* chmod 777 - grant permission for all

* chmod 444 - Entire peoples can only read the file

* **Role of shell scripting inside DevOps**
<img width="1150" height="570" alt="image" src="https://github.com/user-attachments/assets/4db6b525-e2d9-44f8-89dc-f41981b8714a" />

* Devops tasks are maintain the infra , code management using git and linux and then configuration management
* So for all these shell scripting is used in a firm

* **Why are we using shell scripting in DevOps on daily basis.**
<img width="1153" height="608" alt="image" src="https://github.com/user-attachments/assets/c964d3af-b2e0-431b-a3ff-3d1aa728d1a1" />

Real time example:
John a guy who's working in amazon as DevOps engineer
so there are 1000's of virtual machine in amazon 
A developer is asking him that virtual machine 999 is not performing well. What to do?

This is where the shell scripting comes in.
Here what we do is with shell script we can execute it to log in into all the instances and check the node health of the 999 th machine.

Another case is:
We will set a automated script for example on every two days once login into all the instances and check the status of everything and send a email like out of 10,000 systems, 10 system feels suspicious, five system has memory issues and 5 system has cpu issues.

This is why shell-scripting is used in daily basis in DevOps

<img width="1165" height="575" alt="image" src="https://github.com/user-attachments/assets/8345e40a-8cbe-4f0e-adba-336b57989448" />

* We can monitor the CPU and RAM
* How do you find which is CPU and which is RAM?
* For CPU - nproc - list the CPU's on your machine.
* And to understand memory that is present on your laptop - use free command
* top command - Identify what are the processes running on your machine.

In an interview How to check the node health?
I can use the Top command or We can use automated scripts with some extra parameters to monitor the node health of the system.

what are all the basic parameter's you used to eveluate the node health here?
some basic parametetrs are CPU and RAM and all the other commands used today.


