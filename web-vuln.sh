#!\bin\bash

echo "What's the IP range of your target?"
        read target

echo "What's the name of your target?"
        read name

ports=-p22,53,80,443,3306,5222,8080

echo "The target is" $target "and the ports are:" $ports  "and the target/file name will be:" $name

mkdir /home/d43d3lu5/rslts/$name
mkdir /home/d43d3lu5/rslts/$name/web-vuln
cd /home/d43d3lu5/rslts/$name/web-vuln

nmap $target $ports -sC -sV -T5 -v5 > /home/d43d3lu5/rslts/$name/web-vuln/web.init.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script vulners --script-args mincvss=5.0  > /home/d43d3lu5/rslts/$name/web-vuln/web.vulners.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-srv-enum  --script-args "dns-srv-enum.domain"  > /home/d43d3lu5/rslts/$name/web-vuln/web.dns.srv.enum.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script exploit --script-args "exploit.intensive" > /home/d43d3lu5/rslts/$name/web-vuln/web.exploit.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-enum --script-args "http-enum.category" > /home/d43d3lu5/rslts/$name/web-vuln/web.http.enum.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script ssh-publickey-acceptance > /home/d43d3lu5/rslts/$name/web-vuln/web.ssh.publickey.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-client-subnet-scan > /home/d43d3lu5/rslts/$name/web-vuln/web.dns.subnet.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-service-discovery > /home/d43d3lu5/rslts/$name/web-vuln/web.dns.service.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-zone-transfer > /home/d43d3lu5/rslts/$name/web-vuln/web.dns.zone.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script hostmap-crtsh > /home/d43d3lu5/rslts/$name/web-vuln/web.hostmap.crtsh.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-auth-finder > /home/d43d3lu5/rslts/$name/web-vuln/web.http.auth.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-headers > /home/d43d3lu5/rslts/$name/web-vuln/web.http.headers.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-put > /home/d43d3lu5/rslts/$name/web-vuln/web.http.put.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-sitemap-generator > /home/d43d3lu5/rslts/$name/web-vuln/web.http.sitemap.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-waf-fingerprint > /home/d43d3lu5/rslts/$name/web-vuln/web.http.waf.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script ip-https-discover > /home/d43d3lu5/rslts/$name/web-vuln/web.ip.https.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script ssl-cert > /home/d43d3lu5/rslts/$name/web-vuln/web.ssl.cert.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script xmpp-info > /home/d43d3lu5/rslts/$name/web-vuln/web.xmpp.info.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script jdwp-inject > /home/d43d3lu5/rslts/$name/web-vuln/web.jdwp.inject.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script 'jdwp-exec'  > /home/d43d3lu5/rslts/$name/web-vuln/web.jdwp.exec.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-stored-xss > /home/d43d3lu5/rslts/$name/web-vuln/web.http.stored.xss.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-phpmyadmin-dir-traversal > /home/d43d3lu5/rslts/$name/web-vuln/web.http.phpmyadmin.dir.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-csrf > /home/d43d3lu5/rslts/$name/web-vuln/web.http.csrf.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-phpself-xss > /home/d43d3lu5/rslts/$name/web-vuln/web.http.phpself.xss.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-sql-injection > /home/d43d3lu5/rslts/$name/web-vuln/web.http.sql.injection.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script  http-passwd > /home/d43d3lu5/rslts/$name/web-vuln/web.http.passwd.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-git > /home/d43d3lu5/rslts/$name/web-vuln/web.http.git.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-frontpage-login > /home/d43d3lu5/rslts/$name/web-vuln/web.vuln.$name.xml

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-dombased-xss > /home/d43d3lu5/rslts/$name/web-vuln/web.vuln.$name.xml

echo "Done!"

fi
