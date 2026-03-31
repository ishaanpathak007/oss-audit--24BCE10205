# VLC Audit - Script Execution Outputs

This document shows sample (simulated) terminal outputs for all five audit scripts included in the project.

---

## 1. System Identity Report (`01-identify.sh`)

```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./01-identify.sh
================================================================================
                 VLC AUDIT - SYSTEM IDENTITY REPORT
================================================================================
Linux Distribution : Ubuntu 22.04.3 LTS
Kernel Version     : 5.15.0-89-generic
Current User       : ishaanpathak
Home Directory     : /home/ishaanpathak
System Uptime      : up 2 hours, 45 minutes
Current Date/Time  : Tue Mar 31 2026 11:35:31 GMT+0000
--------------------------------------------------------------------------------
Note: This system runs on open-source software, allowing users to use, study,
      modify, and distribute it freely.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)

```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./02-packages.sh
================================================================================
                 VLC AUDIT - PACKAGE INSPECTOR
================================================================================
Status  : vlc is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version : 3.0.18-1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - VLC         : A free and open-source media player supporting most formats.
 - Firefox     : An open-source browser focused on privacy and control.
 - LibreOffice : A powerful open-source alternative to paid office tools.
 - GIMP        : An advanced open-source image editing software.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)

```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./03-auditor.sh
================================================================================
                 VLC AUDIT - DIRECTORY AUDITOR
================================================================================
Directory            Size       Perms      Owner     
--------------------------------------------------------------------------------
/etc                 128K       755        root      
/var/log             100K       755        root      
/usr/bin             1.5M       755        root      
/home                512K       755        root      
/var/www             256K       755        root      
/etc/vlc             64K        755        root      
/var/log/vlc         32K        755        root      
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)

```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./04-logs.sh /var/log/syslog error
================================================================================
                 VLC AUDIT - LOG FILE ANALYZER
================================================================================
Analyzing log file : /var/log/syslog
Searching keyword  : error
--------------------------------------------------------------------------------
Total matches found: 10
--------------------------------------------------------------------------------
Last 5 matching entries:
Mar 31 11:30:01 ubuntu-server CRON[1234]: error: failed to execute command
Mar 31 11:25:01 ubuntu-server CRON[1235]: error: failed to execute command
Mar 31 11:20:01 ubuntu-server CRON[1236]: error: failed to execute command
Mar 31 11:15:01 ubuntu-server CRON[1237]: error: failed to execute command
Mar 31 11:10:01 ubuntu-server CRON[1238]: error: failed to execute command
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)

```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./05-manifesto.sh
================================================================================
                 VLC AUDIT - MANIFESTO GENERATOR
================================================================================
Please answer the following questions to generate your open-source manifesto:

What is your name? ishaanpathak  
What is your favorite open-source project? VLC  
Why do you support open-source software? Because it promotes user freedom and collaboration  

My name is ishaanpathak, and I believe in the power of open-source software.
My favorite project is VLC, which has inspired me to learn and contribute.
I support open-source software because it promotes user freedom and collaboration.

Your manifesto has been saved to ishaanpathak.txt.
================================================================================
```
