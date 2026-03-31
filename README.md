# 🛡️ Open Source Software Audit: Apache HTTP Server

**Repository:** `oss-audit-24BAI10183`  
**Author:** Devender Singh
**Roll Number:** 24BAI10183
**Target Software:** [Apache HTTP Server](https://httpd.apache.org/)

---

## 📖 Project Overview
This capstone repository houses a suite of five custom-built Bash shell scripts designed to perform a comprehensive Open Source Software (OSS) audit on the Apache HTTP Server. Developed specifically for Ubuntu/Debian-based Linux environments, these scripts automate system profiling, package verification, directory auditing, and log analysis.

## 🛠️ Script Features & Breakdown
Here is a detailed look at the utility of each script included in this audit workflow:

* **`script1.sh` | System Profiler:** Utilizes command substitution to dynamically extract and report fundamental host identity metrics, including the underlying OS, Kernel version, and current system uptime.
* **`script2.sh` | FOSS Package Validator:** Acts as an inspector to verify the Apache package. It checks the APT package manager to confirm installation status, architectural compatibility, and the specific version deployed.
* **`script3.sh` | Storage & Security Auditor:** Iterates through critical system directories, explicitly targeting the `/etc/apache2` configuration path. It audits storage consumption and evaluates ownership and access permissions to ensure security compliance.
* **`script4.sh` | Diagnostic Log Parser:** Employs a conditional `while-read` loop to parse server log files line-by-line. It is designed to identify, flag, and tally specific system errors or warnings for easier debugging.
* **`script5.sh` | Open-Source Manifesto Generator:** An interactive script that uses string concatenation and user input to dynamically generate a personalized text file detailing your open-source philosophy.

## ⚙️ Prerequisites & Environment Setup
To ensure seamless execution of these audit tools, your system must meet the following requirements:

* **Operating System:** A Debian/Ubuntu-based Linux distribution. *(Note: You can seamlessly run these via the Windows Subsystem for Linux - WSL).*
* **Shell Environment:** A standard Bash shell.
* **Required Packages:** The Apache HTTP Server is a mandatory dependency for this audit.
    * Install it using: `sudo apt update && sudo apt install apache2`
    * *Warning:* Without this package, **Script 2** and **Script 3** will fail to locate the necessary software binaries and configuration directories.

## 🚀 Execution Guide

Follow these sequential steps to configure and run the audit scripts on your local machine.

### 1. Launch Your Environment
Open your Linux terminal (or your WSL instance).

### 2. Locate the Repository
Navigate to the directory containing the cloned or downloaded scripts using the `cd` command:

    cd /path/to/oss-audit-24BAI10183

### 3. Assign Execution Privileges
By default, Linux text files do not possess executable permissions. You must grant these rights using the `chmod` utility before running them for the first time:

    chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

### 4. Running the Scripts
Execute the scripts by prepending `./` to the filename. This explicitly instructs the shell to execute the file located in your current working directory.

**For Scripts 1, 2, 3, and 5:**

    ./script1.sh

**Special Usage for Script 4 (`script4.sh`):**
Because this script functions as a log analyzer, it requires a target file path passed as a command-line argument.

*Example Workflow for Script 4:*
1. Create a simulated log file for testing purposes:

       echo -e "System booted\nWarning: high memory usage\nError: connection timeout\nError: Apache service failed" > dummy_log.txt

2. Execute the script against the newly created log file:

       ./script4.sh dummy_log.txt

---
*Developed as part of the Open Source Software Audit Capstone Project.*