# ■ Day 02 — Shell Scripting

## ■ Date

[02-04-2026]

---

## ■ Video Covered

Shell Scripting — Part 2

---

## ■ Topics Learned

* Comments to write the file information
* set -x #debug
* ps -ef - processes running 
* How to use grep
* | - pipe statement
* How to write a shell script best practices
* d/b curl and wget
* what is the use of awk
* uses of set -x , set -e and set -o pipefail
* important interview question on pipe
* how to search for errors in remote logfile
* commands for Node health
* loops
* trap

---

## ■ Commands Learned

```
nproc - To list the no of cpu's in the machine
free -g - to check the memory
top - Identify all the process running in  our machine
df -h - Print the diskspace

set -x - Display output in the debug mode
set -e - exits the script when theres an error in the s
set -o pipefail

ps -ef - provides the entire processes running.
grep - filter the specific thing which we wants as output
| - Pipe
date - display date
awk -F - powerful tool for filtering and fetching the desired output

curl - retrive anything from external sources
curl -X GET - retrive API
wget - download the external file and stores inside our virtual machine
find - search your entire file system

sudo su - - switch into root

if-else loop
for loop

trap - trap the signals
kill -9 - kill the process

```

---


## ■ What I Learned (Notes)

* creating a shell script to display node health
* Always write the Meta Data information
* so the proper way of writting a shell script is we need to write the details of the shell script - Meta Data

* <img width="445" height="332" alt="image" src="https://github.com/user-attachments/assets/a4367406-e689-4c0a-a82a-c2e1c5396bf7" />

* We can use # to write the comments
* in the details write the aurthor, date, usecase of the shell script and version.
* so with df -h free -m nproc save the file and set permissions and execute the script
* Now output will be unorganised and we cant find what is what in that output clearly.
* so for that we are using echo to write the description and command below that

<img width="735" height="437" alt="image" src="https://github.com/user-attachments/assets/125ec026-f829-454a-a9df-2088b5470319" />

* But the proper way of writing a shell script like a DevOps engineer is
* Always use set -x before starting the script
* set -x - Display the output in a debug mode
* It will show you the command you used to adn the echo statement you printed together
* Always combine both the techniques while writting a shell script
* Meta data , set -x (debug mode) and echo statements

* In some cases you dont want to show the commands you used in the shell script
* In such cases remove set -x (debug mode)

* So if your watching a playlist and working something in chrome so how can we find what are all the processes which is running.
* for example we are using youtube app for watching youtube and chrome and some system processes will be running in background

* But if you are working in amazon , in Amazon there are 200-300 microprocesses
* If a developer has deployed 200 vm's , so everything will have its own processes which is running.

* So in linux ps -ef command , ps - processes and ef - its provides the entire details of the processes in a full format
*  we can use ps too, but it does not give all the processes
*  so to figure out all the process running - ps -ef
*  if we are running the xommand ps -ef it will display output like every processess which is running
*  <img width="732" height="436" alt="image" src="https://github.com/user-attachments/assets/5d5808c9-e607-465c-8da5-24dcfecfddf6" />

*  so if your manager is asking you to get only the amazon processess which is running in the vm
*  Here comes the powerful command called **grep**
*  ps -ef | grep "amazon" - we will get only the amazon processes
*  <img width="738" height="282" alt="image" src="https://github.com/user-attachments/assets/9c86ec5b-c80c-409d-b660-4f6fad1ce5cc" />

*  So Now the manager asks he only needs the process id not everything
*  Anything you want to do with the process - we will use process id only

*  Now we need to understand what is pipe parameter [|]
*  ps -ef | grep amazon - what pipe does here is it sends the output of first command  to second command.

Interview question

<img width="728" height="290" alt="image" src="https://github.com/user-attachments/assets/e517f0e3-af88-4d16-b3cf-e101e56b6fb3" />


*  date | echo "date is"
*  will this print the date with date is as we seen before. No why?
*  Date is a default default command and it sends the output to stdin
*  in any system there are some channels stdin stdout stderr
*  pipe does not able to recieve information from stdin

*  d/b grep and awk -command
*  grep directly gives you the entire statements
*  awk can also give us specific column from the output

*  to retrive information of PID we are using grep command to filter and list the amazon process and with awk we are filtering the second column in the output provided by grep.

*  ps -ef | grep amamzon | awk -F" " '{print $2}'

*  So imagine if we are creating a file named test and entering some contents in the file
*  My name is rohit
*  my employee id is 2582865
*  Lets assume now manager asks me the employee id of Rohit

*  grep employee test | awk -F" " '{print $5}' - (Filter the word employee from test file and give te output to awk and tell the awk command to find the 5 th column of the file as input and tells to print that.

Excercise
* Now okay lets try this in node health script to print only the process id of amazon
<img width="743" height="440" alt="image" src="https://github.com/user-attachments/assets/95af8de4-47be-48e0-a1fa-82c011767956" />

Next topic

* whenever we are using a pipe inside script always use
* set -e # exit the script when theres an error
* set -o # pipe fail

* Lets say you are writing shell script in the specific order
* creating a user, create afile , add the user name to the file
  so if we are not using set -e, if we write a wrong script without set -e the first step fails and what is the use of second step gets executed , step 1 failed so ofcourse step 3 will also fail.
  But one draw back of **set -e**
  ssshhh | echo - if the last command is right it wont exit the file and executes the script

  set -o pipefail comes in
  it will check the pipes command are well and good and runs the script or else it will exit and shows the error.

  so these are all the best practices to write a shell script.


  What is one of the major use case of DevOps engineer?
  If any one of application is failing , finding the errors in logfile.
  Generally log file is a big file, to find error level

  Uploaded the log files in some of the external storage devicie not in the virtual machine
  Here comes the **curl** command
  curl command retrives the information from internet

  <img width="1181" height="541" alt="image" src="https://github.com/user-attachments/assets/6d4d9885-1e85-411d-b382-098b6e4162a1" />

  So here we used the curl commmand and path of the external logfile and to get the errors we are using grep command

  * **wget** command downloads and stores the log file
  so now log gets stores in our machine
  we can find errors using
  cat log.file | grep ERROR
  In this way we can download and store the file from external source using wget.

* Find command
  Let's say if your manager comes and tells you the file name but you don't know where the file is exactly located find command helps.
  But before that if we want to search all the files and folders in our virtual system.
  We needs to be the root user.

* How to switch as root user
  sudo su - (switch into root user)
  sudo su username - (switch as the user we entered)

* So what is sudo?
 sudo gives us sudo previlages, we run some commands behalf of the root user. We can continue to be in same user and if we want to execute root commands we needs to use sudo.

* How to use the find command?
  sudo find / -name pam
  (root user previlages, find command, / (every files and folders of system), -name (to specify the name of the file), pam (filename)

* If loops, if-else loops, for loops

* **If-else loop**

  **syntax**

  if [expression]
  then
        execute
        execute
  else
        execute
  fi

  * **for example**

    <img width="732" height="437" alt="image" src="https://github.com/user-attachments/assets/ecaecc3e-6a73-439c-a32d-a61773c51324" />

  * **For loop**
    To do multiple iterations on a program for loop is used in shell script
    for example
    write numbers from 1 to 10
    print a week from monday to sunday
    
    **Syntax**

    <img width="717" height="428" alt="image" src="https://github.com/user-attachments/assets/87641d5b-53dc-4888-ab60-37feb532a7a9" />


  * Trap command
    it is basically used for trapping signals
    so if you run yes in linux it will start execute and prints y to infinity
    so by pressing ctrl+c , we can get to know that signal is recieved to stop execute the files.
    i dont want somebody to press ctrl c and stop the execution of the file.
    so what we can do is we can trap - even if somebody is ctrl c send me a email notification or give a message statement.

    So trap signal is basically trap the signals behalf of our own.

    Syntax:

    trap "echo dont use ctrl+c" SIGINT

    trap "rm -rf *" SIGINT - delete everything from the data base if someone's press ctrl+c.
    
    
  Interview Question:
  What are the signals that are linux?

    There are so many signals in linux. for example if we use kill command, linux recieves a signal called SIGKILL.
    There are plenty of signals like that.

  

    

    
