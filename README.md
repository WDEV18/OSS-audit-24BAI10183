



##### 🛡️ Open Source Software Audit: Apache HTTP Server

Repository: oss-audit-24BAI10183

Author: Devender Singh

Roll Number: 24BAI10183

Target Software: Apache HTTP Server



##### 📖 Project Overview

This is my capstone repository for the Open Source Software course. Inside you'll find five custom Bash shell scripts that I put together to do a complete OSS audit on the Apache HTTP Server.

I built these specifically for Ubuntu and Debian based Linux systems — they run fine on WSL too. The idea was to automate a bunch of checks that would honestly take forever to do by hand — things like system profiling, package verification, directory auditing, security checks, and log analysis. There's even a little personal manifesto generator thrown in at the end. It was a genuinely fun way to dig into how open source software like Apache actually behaves in a real environment.



##### 🛠️ Script Features \& Breakdown

Here's a quick rundown of what each script does:



* script1.sh | System Profiler

&#x20;  Pulls out the basic host details using command substitution — OS name, kernel version, system uptime. Just a clean snapshot of whatever machine you're running it on.

* script2.sh | FOSS Package Validator

Works like a mini inspector. Checks the APT package manager to confirm Apache is actually installed, what architecture it's on, and the exact version you've got.

* script3.sh | Storage \& Security Auditor

&#x20;  Goes through the key system directories — especially /etc/apache2 — and checks storage usage, file ownership, and permissions. A quick way to spot anything that looks off from a security angle.

* script4.sh | Diagnostic Log Parser

&#x20;  It loops through your log file and tallies up every error and warning it hits along the way — beats scrolling through the whole thing yourself when you just want a quick picture of what    went wrong.

* script5.sh | Open-Source Manifesto Generator

&#x20;  My personal favourite. You type in your thoughts when it prompts you, and it builds a text file that actually feels like something you wrote — not some generic output. Simple input and                 string handling, but the result feels personal.





##### ⚙️ Prerequisites \& Environment Setup

Nothing too complicated, but a couple of things need to be in place before these scripts will actually work:



Operating System: A Debian or Ubuntu based Linux distro — WSL on Windows works fine too.

Shell: Standard Bash, nothing special required.

Required Package: Apache HTTP Server — make sure it's sitting on your system before you kick anything off.



Don't have Apache yet? One command and you're sorted:

bashsudo apt update \&\& sudo apt install apache2 -y



⚠️ Worth knowing — Script 2 and Script 3 will fall over if Apache isn't on the machine yet, because they go hunting for files and folders that only exist once Apache is installed. Sort that out first and you won't hit any issues.





##### 🚀 Execution Guide

1\. Launch Your Environment

Open your Linux terminal or WSL window.

2\. Navigate to the Repository Folder

bashcd /path/to/oss-audit-24BAI10183

3\. Make the Scripts Executable

Linux won't let you run a fresh script until you explicitly tell it to — this command takes care of all five at once:

bashchmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

4\. Run the Scripts

Once permissions are set, running them is dead simple — just put ./ in front and hit enter:

Scripts 1, 2, 3, and 5 all run the same straightforward way:

bash./script1.sh

./script2.sh

./script3.sh

./script5.sh

Script 4 is slightly different — it needs you to hand it a log file to work with:

Don't have a real log handy? Just whip up a quick test one and point the script at it:

bash# Create a dummy log file

echo -e "System booted\\nWarning: high memory usage\\nError: connection timeout\\nError: Apache service failed" > dummy\_log.txt



\# Run the script

./script4.sh dummy\_log.txt

```



\---



##### \## 📁 Repository Structure

```

oss-audit-24BAI10183/

│

├── script1.sh       # System Profiler

├── script2.sh       # FOSS Package Validator

├── script3.sh       # Storage \& Security Auditor

├── script4.sh       # Diagnostic Log Parser

├── script5.sh       # Open-Source Manifesto Generator

└── README.md        # You're reading it

