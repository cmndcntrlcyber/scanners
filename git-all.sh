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
git clone https://github.com/cmndcntrlcyber/commands.git

mv IntruderPayloads INTpay
mv PayloadsAllTheThings PATT
mv SecLists seclists

mv scanners /home/$user/scripts
mv paylaods /home/$user/scripts
mv py /home/$user/scripts
mv commands /home/$user
mv fuzzdb /usr/$user/wordlists
mv INTpay /usr/$user/wordlists
mv PATT /usr/$user/wordlists
mv seclists /usr/share/wordlists
