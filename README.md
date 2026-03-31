# The Open Source Audit: VLC

**Student Name:** Ishaan Pathak
**Registration Number:** 24BCE10205
**Project Focus:** VLC (FOSS Audit)

## Project Overview

This project is a collection of five Bash shell scripts created as part of a university capstone. The main goal is to audit VLC on Linux systems in a simple and automated way. Each script focuses on a specific task like checking system details, inspecting installed packages, auditing directories, analyzing logs, and generating a small open-source manifesto.

## Script Descriptions

### 1. 01-identify.sh

**Purpose:** System Identity Report
This script gives a quick overview of the system. It shows details like the Linux distribution, kernel version, current user, home directory, and system uptime. It also includes a short open-source license message.

### 2. 02-packages.sh

**Purpose:** FOSS Package Inspector
This script checks whether VLC is installed on the system and identifies the package manager being used. It also includes some basic notes about commonly used FOSS tools.

### 3. 03-auditor.sh

**Purpose:** Disk and Permission Auditor
This script scans important system directories as well as VLC-related directories. It reports their size, ownership, and file permissions in a clear format.

### 4. 04-logs.sh

**Purpose:** Log File Analyzer
This script looks through VLC log files for specific keywords provided by the user. It counts how many times the keyword appears and shows the last five matching entries.

### 5. 05-manifesto.sh

**Purpose:** Open Source Manifesto Generator
This is an interactive script where the user provides input, and the script generates a simple personalized open-source manifesto. The output is saved as a text file.

---

## Instructions for Use

chmod +x *.sh
./01-identify.sh
./02-packages.sh
./03-auditor.sh
./04-logs.sh /var/log/syslog error
./05-manifesto.sh
