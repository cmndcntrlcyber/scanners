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
git clone https://github.com/almandin/fuxploider.git
git clone https://github.com/EmpireProject/Empire.git
git clone https://github.com/BloodHoundAD/BloodHound.git
git clone https://github.com/SecureAuthCorp/impacket.git
git clone https://github.com/samratashok/nishang.git
git clone https://github.com/Tib3rius/AutoRecon.git

mv IntruderPayloads intpay
mv PayloadsAllTheThings patt
mv SecLists seclists

mv scanners /home/$user/files/recon/
mv paylaods /home/$user/files/
mv fuzzdb /home/$user/files/recon/wordlists
mv intpay /home/$user/files/recon/wordlists
mv patt /home/$user/files/recon/wordlists
mv seclists /home/$user/files/recon/wordlists
mv fuxploider /home/$user/files/recon
mv Empire /home/$user/files/post/win
mv BloodHound /home/$user/files/post/win
mv impacket /home/$user/files/payloads
mv nishang /home/$user/files/payloads/win
mv AutoRecon /home/$user/files/recon

