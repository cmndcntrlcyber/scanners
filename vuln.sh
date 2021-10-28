#!\bin\bash
echo "What type of target is this?"
        read type
echo "What's the IP range of your target?"
        read target
echo "Which ports?"
        read ports
echo "What's the name of your target?"
        read name
echo "The target is" $target "and the ports are:" $ports  "and the target/file name will be: /home/d43d3lu5/recon/$type/$name"

sudo mkdir /home/d43d3lu5/files/targets/$type
sudo mkdir /home/d43d3lu5/files/targets/$type/$name
cp -r /home/d43d3lu5/engaged /home/d43d3lu5/files/targets/$type/$name
mkdir /home/d43d3lu5/files/targets/$type/$name/engaged/recon/vuln
cd /home/d43d3lu5/files/targets/$type/$name/engaged/recon/vuln

sudo nmap $target $ports -f -T5 -v5 -Pn -sV -sC -O --script smb-brute.nse -oX vuln.smb-brute.$name.xml
xsltproc vuln.smb-brute.$name.xml -o vuln.smb-brute.$name.html
rm vuln.smb-brute.$name.xml

sudo nmap $target $ports -T5 -v5 -Pn -sV -sC -oX vuln.init.$name.xml
xsltproc vuln.init.$name.xml -o vuln.init.$name.html
rm vuln.init.$name.xml 

sudo nmap $target $ports -f -T5 -v5 -Pn -sV -sC -O --script vulners --script-args mincvss=5.0 -oX vuln.vulners.$name.xml
xsltproc vuln.vulners.$name.xml -o vuln.vulners.$name.html
rm vuln.vulners.$name.xml 

sudo nmap $target $ports -f -T5 -v5 -Pn -sV -sC -O --script dns-srv-enum  --script-args "dns-srv-enum.domain" -oX vuln.dns-enum.$name.xml
xsltproc vuln.dns-enum.$name.xml -o vuln.dns-enum.$name.html                                                                                                                                                                               
rm vuln.dns-enum.$name.xml                                                                                                                                                                                                                 
                                                                                                                                                                                                                                           
sudo nmap $target $ports -f -T5 -v5 -Pn -sV -sC -O --script exploit --script-args "exploit.intensive" -oX vuln.exploit.$name.xml                                                                                                           
xsltproc vuln.exploit.$name.xml -o vuln.exploit.$name.html                                                                                                                                                                                 
rm vuln.exploit.$name.xml                                                                                                                                                                                                                  
                                                                                                                                                                                                                                           
sudo nmap $target $ports -f -T5 -v5 -Pn -sV -sC -O --script http-enum --script-args "http-enum.category" -oX vuln.http-enum.$name.xml                                                                                                      
xsltproc vuln.http-enum.$name.xml -o vuln.http-enum.$name.html                                                                                                                                                                             
rm vuln.http-enum.$name.xml                                                                                                                                                                                                                
                                                                                                                                                                                                                                           
sudo nmap $target $ports -f -T5 -v5 -Pn -sV -sC -O --script ssh-publickey-acceptance -oX vuln.ssh-pubkey.$name.xml                                                                                                                         
xsltproc vuln.ssh-pubkey.$name.xml -o vuln.ssh-pubkey.$name.html                                                                                                                                                                           
rm vuln.ssh-pubkey.$name.xml                                                                                                                                                                                                               
                                                                                                                                                                                                                                           
echo "Done!"
