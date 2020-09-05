#!/bin/bash/

echo "what is your username"
read user

mkdir /home/$user/scripts
mkdir /home/$user/git
cd /home/$user/git

git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git
git clone https://github.com/1N3/IntruderPayloads.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/The-Art-of-Hacking/h4cker.git
git clone https://github.com/OlivierLaflamme/Cheatsheet-God.git
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/cmndcntrlcyber/scanners.git
git clone https://github.com/cmndcntrlcyber/payloads.git
git clone https://github.com/cmndcntrlcyber/py.git


mv IntruderPayloads INTpay
mv PayloadsAllTheThings PATT
mv SecLists seclists

mv scanners /home/d43d3lu5/scripts
mv paylaods /home/d43d3lu5/scripts
mv py /home/d43d3lu5/scripts
mv commands /home/d43d3lu5
mv fuzzdb /usr/share/wordlists
mv INTpay /usr/share/wordlists
mv PATT /usr/share/wordlists
mv seclists /usr/share/wordlists
