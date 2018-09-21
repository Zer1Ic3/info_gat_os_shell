#!/bin/bash

d=$(date +%Y-%m-%d)

echo "System check has started, Please review output file(/tmp/security_check.txt), Have fun hacking:)"
sleep 4
clear

echo "$d" > /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "Home Dir" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
cd /home/
ls -al >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "Passwd & Shadow " >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
ls -l /etc/passwd >> /tmp/security_check.txt
ls -l /etc/shadow >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
cat /etc/passwd >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "Crontab "  >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
cat /etc/crontab >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "Sudo permissions check" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
sudo -l >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "User application permissions "   >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
find / -perm -4000 2>/dev/null  >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt
echo "============================================" >> /tmp/security_check.txt

echo "Information collection is finish"
sleep 4
clear
