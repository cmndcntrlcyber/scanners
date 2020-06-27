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

nmap $target $ports -sC -sV -T5 -v5 -oX web.init.$name.xml
xsltproc web.init.$name.xml -o web.init.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script vulners --script-args mincvss=5.0  -oX web.vulners.$name.xml
xsltproc web.vulners.$name.xml -o web.vulners.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-srv-enum  --script-args "dns-srv-enum.domain" -oX web.dns.srv.enum.$name.xml
xsltproc web.dns.srv.enum.$name.xml -o web.dns.srv.enum.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script exploit --script-args "exploit.intensive" -oX web.exploit.$name.xml
xsltproc web.exploit.$name.xml -o web.exploit.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-enum --script-args "http-enum.category" -oX web.http.enum.$name.xml
xsltproc web.http.enum.$name.xml -o web.http.enum.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script ssh-publickey-acceptance -oX web.ssh.publickey.$name.xml
xsltproc web.ssh.publickey.$name.xml -o web.ssh.publickey.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-client-subnet-scan -oX web.dns.subnet.$name.xml
xsltproc web.dns.subnet.$name.xml -o web.dns.subnet.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-service-discovery -oX web.dns.service.$name.xml
xsltproc web.dns.service.$name.xml -o web.dns.service.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script dns-zone-transfer -oX web.dns.zone.$name.xml
xsltproc web.dns.zone.$name.xml -o web.dns.zone.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script hostmap-crtsh -oX web.hostmap.crtsh.$name.xml
xsltproc web.hostmap.crtsh.$name.xml -o web.hostmap.crtsh.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-auth-finder -oX web.http.auth.$name.xml
xsltproc web.http.auth.$name.xml -o web.http.auth.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-headers -oX web.http.headers.$name.xml
xsltproc web.http.headers.$name.xml -o web.http.headers.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-put -oX web.http.put.$name.xml
xsltproc web.http.put.$name.xml -o web.http.put.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-sitemap-generator -oX web.http.sitemap.$name.xml
xsltproc web.http.sitemap.$name.xml -o web.http.sitemap.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-waf-fingerprint -oX web.http.waf.$name.xml
xsltproc web.http.waf.$name.xml -o web.http.waf.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script ip-https-discover -oX web.ip.https.$name.xml
xsltproc web.ip.https.$name.xml -o web.ip.https.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script ssl-cert -oX web.ssl.cert.$name.xml
xsltproc web.ssl.cert.$name.xml -o web.ssl.cert.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script xmpp-info -oX web.xmpp.info.$name.xml
xsltproc web.xmpp.info.$name.xml -o web.xmpp.info.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script jdwp-inject -oX web.jdwp.inject.$name.xml
xsltproc vuln-init.$name.xml -o vuln-init.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script 'jdwp-exec' -oX web.jdwp.exec.$name.xml
xsltproc web.jdwp.exec.$name.xml -o web.jdwp.exec.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-stored-xss -oX web.http.stored.xss.$name.xml
xsltproc web.http.stored.xss.$name.xml -o web.http.stored.xss.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-phpmyadmin-dir-traversal -oX web.http.phpmyadmin.dir.$name.xml
xsltproc web.http.phpmyadmin.dir.$name.xml -o web.http.phpmyadmin.dir.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-csrf -oX web.http.csrf.$name.xml
xsltproc web.http.csrf.$name.xml -o web.http.csrf.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-phpself-xss -oX web.http.phpself.xss.$name.xml
xsltproc web.http.phpself.xss.$name.xml -o web.http.phpself.xss.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-sql-injection -oX web.http.sql.injection.$name.xml
xsltproc web.http.sql.injection.$name.xml -o web.http.sql.injection.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script  http-passwd -oX web.http.passwd.$name.xml
xsltproc web.http.passwd.$name.xml -o web.http.passwd.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-git -oX web.http.git.$name.xml
xsltproc web.http.git.$name.xml -o web.http.git.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-frontpage-login -oX web.http.frontpage.$name.xml
xsltproc web.http.frontpage$name.xml -o web.http.frontpage.$name.html

nmap $target $ports -f -T1 -v5 -Pn -sV -sC --script http-dombased-xss -oX web.dom.xss.$name.xml
xsltproc web.dom.xss.$name.xml -o web.dom.xss.$name.html

echo "Done!"
