#!/bin/bash/

mkdir /home/d43d3lu5/git
cd /home/d43d3lu5/git

git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git
git clone https://github.com/1N3/IntruderPayloads.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/The-Art-of-Hacking/h4cker.git
git clone https://github.com/OlivierLaflamme/Cheatsheet-God.git
git clone https://github.com/danielmiessler/SecLists.git

mv IntruderPayloads INTpay
mv PayloadsAllTheThings PATT
mv SecLists seclists

mv fuzzdb /usr/share/wordlists
mv INTpay /usr/share/wordlists
mv PATT /usr/share/wordlists
mv seclists /usr/share/wordlists
