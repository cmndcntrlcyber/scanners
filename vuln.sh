#!\bin\bash

nmap -v5 -f -T4 -Pn -sV -sC -O --script=vuln -p$2 $1 -oN $3.1.txt
nmap -v5 -f -T4 -Pn -sV -sC -O --script-args="vuln.intesnive" -p$2 $1 -oN $3.2.txt
nmap -v5 -f -T4 -Pn -sV -sC -O --script=exploit -p$2 $1 -oN $3.3.txt
nmap -v5 -f -T4 -Pn -sV -sC -O --script-args="exploit.intensive" -p$2 $1 -oN $3.4.txt
 
