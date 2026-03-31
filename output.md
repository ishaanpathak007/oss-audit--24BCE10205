# Vlc Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./01-identify.sh
================================================================================
                   Vlc AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       ishaanpathak
Home Directory:     /home/ishaanpathak
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 11:35:31 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./02-packages.sh
================================================================================
                   Vlc AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: vlc is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 3.0.18-1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Vlc: A free and open-source media player that plays most multimedia files.
 - Firefox: A free and open-source web browser that promotes user freedom and privacy.
 - LibreOffice: A free and open-source office suite that provides an alternative to proprietary software.
 - GIMP: A free and open-source raster graphics editor that offers a wide range of features and tools.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./03-auditor.sh
================================================================================
                   Vlc AUDIT - DIRECTORY AUDITOR                 
================================================================================
/etc    128K    drwxr-xr-x    root
/var/log    100K    drwxr-xr-x    root
/usr/bin    1.5M    drwxr-xr-x    root
/home    512K    drwxr-xr-x    root
/var/www    256K    drwxr-xr-x    root
/etc/vlc    64K    drwxr-xr-x    root
/var/log/vlc    32K    drwxr-xr-x    root
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
ishaanpathak@ubuntu-server:~/Vlc$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Vlc AUDIT - LOG FILE ANALYZER              
================================================================================
Analyzing log file: /var/log/syslog
Searching for keyword: error
Found 10 occurrences of 'error'.
Last 5 matches:
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
                   Vlc AUDIT - MANIFESTO GENERATOR              
================================================================================
Please answer the following questions to generate your open-source manifesto:
What is your name? ishaanpathak
What is your favorite open-source project? Vlc
Why do you support open-source software? because it promotes user freedom and collaboration
My name is ishaanpathak, and I believe in the power of open-source software. My favorite project is Vlc, which has inspired me to contribute to the community. I support open-source software because because it promotes user freedom and collaboration.
Your manifesto has been saved to ishaanpathak.txt.
================================================================================
```