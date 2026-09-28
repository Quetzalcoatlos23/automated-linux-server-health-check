# Automated Linux Server Health Check

Automated Linux Server Health Check is a simple Bash scripting project designed to monitor essential Linux server resources automatically.

## Table of Contents
1. [Project Overview](#1-Project-Overview)
2. [Requirements](#2-Requirements)

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
