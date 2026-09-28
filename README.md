# Automated Linux Server Health Check

Automated Linux Server Health Check is a simple Bash scripting project designed to monitor essential Linux server resources automatically.

## Table of Contents
1. [Project Overview](#1-Project-Overview)
2. [Requirements](#2-Requirements)
3. [Project Structure](#3-Project-Structure)
4. [Server Environment](#4-Server-Environment)
5. [Creating the Health Check Script](#5-Creating-the-Health-Check-Script)
6. 

## 1. Project Overview
### Introduction
The script collects and displays important server health information, including the current system date and time, CPU usage, memory utilization, and disk usage. This project demonstrates how basic Linux commands can be combined with Bash scripting, pipes, `grep`, and `awk` to create a lightweight server monitoring tool.

### Objectives
The project is intended as a practical introduction to Linux system administration and Bash automation.

### Features

- Display current server date and time
- Monitor CPU usage and idle percentage
- Monitor total, used, and available memory
- Monitor disk utilization
- Filter Linux storage devices
- Run all health checks automatically from a single Bash script
- Lightweight and requires no additional monitoring software

## 2. Requirements
### Linux Server
Linux server I use in this project is the latest Ubuntu 26.04.01
## Bash Shell
The script uses Bash (Bourne Again Shell) as the command-line interpreter. GNU bash, version 5.3.9(1)-release (x86_64-pc-linux-gnu)

You can check the installed Bash version using:
```
bash --version
```
## Required Linux Commands
The script uses several standard Linux commands:
| Command | Function |
|---------|----------|
|  date   | Displays the current system date and time |
|  top    | Displays CPU and running process information |
|   free  | Displays system memory usage |
|    df   | Displays filesystem and disk usage |
|   grep  | Filters specific text from command output |
|   awk   | Processes and formats command output |

You can check whether these commands are available using:
```
which date
```
```
which top
```
```
which free
```
```
which df
```
```
which grep
```
```
which awk
```
## 3. Project Structure
The project uses a simple directory structure to keep the Bash script and documentation organized.
```
automated-linux-server-health-check/
│
├── README.md
├── server_health.sh
│
├── screenshots/
│   ├── server-info.png
│   ├── script.png
│   └── health-check-output.png
│
└── LICENSE
```
### File Description
| File/Directory | Description |
|----------------|-------------|
| README.md | Contains project documentation and usage instructions |
| server_health.sh | Main Bash script used to perform the server health check |
| screenshots/ | Contains screenshots of the configuration, script, and execution results |
| LICENSE | Contains the project license information |

The main component of this project is server_health.sh, which executes several Linux commands to retrieve CPU, memory, disk, and system information.

## 4. Server Environment
The Server Health Check script is tested on a Linux server. Before creating the script, check basic system information to identify the operating system, kernel, architecture, and available hardware resources.
### Operating System
To identify the Linux distribution, run:
```
cat /etc/os-release
```
An example of the OS I used in this project is:
```
PRETTY_NAME="Ubuntu 26.04.1 LTS"
NAME="Ubuntu"
VERSION_ID="26.04"
VERSION="26.04.1 LTS (Resolute Raccoon)"
VERSION_CODENAME=resolute
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=resolute
LOGO=ubuntu-logo
```
### System Information
<img width="607" height="357" alt="System info 1" src="https://github.com/user-attachments/assets/33e74cf5-142a-4c75-a8a1-dc1ba6c7694d" />
<img width="722" height="79" alt="System info 2" src="https://github.com/user-attachments/assets/ede8e2f1-f6d3-4c60-9aa6-2b5f67d2916b" />
<img width="717" height="219" alt="System info 3" src="https://github.com/user-attachments/assets/8b085348-ceae-42b4-b882-ae8f8034bbb2" />

These commands provide an overview of the server environment where the automated health check script will be created and executed.

For example, the server environment can be summarized as:
| Component | Information |
|-----------|-------------|
| Operating System | Linux Distribution |
| Shell | Bash |
| Hostname | Server Hostname |
| CPU | Server CPU Information |
| Memory | Total server memory |
| Storage | Available server storage |
| Kernel | Linxu Kernel Version |

The actual values depend on the Linux server or virtual machine used for this project.

## 5. Creating the Health Check Script
### Step 1 - Create the Bash File
First, we create our directory where we will save the script and also make it easy to search.
<img width="620" height="117" alt="1" src="https://github.com/user-attachments/assets/4be429ed-3117-4582-8d02-aac957b47551" />
Next, we create the script. You can use Vim or Nano or any other Linux text editor, but in this case I'm using Nano.
<img width="742" height="96" alt="2" src="https://github.com/user-attachments/assets/2ba2af59-f2dd-4c31-8cb6-af0055e461d4" />
### Step 2 - Add Shebang
```
#!/bin/bash
```
This command is called a shebang.
It tells the system to use the Bash shell to execute the script.
Without this first line, the system may try to use another shell, like `sh`, which might not support all Bash features.
```
echo "Checking Server Health..."
```
This command prints a nice, friendly banner to indicate the start of the health check process.
Also, `echo` is used to display text on the terminal or write it to a log file
### Step 3 - Check Date and Time
```
# Check Date
```
A comment line for readability. Comments start with # and are ignored during execution.
It just labels the next section.
```
echo "DATE:"
```
Outputs the label "DATE:" to show that the current date/time is about to be printed.
