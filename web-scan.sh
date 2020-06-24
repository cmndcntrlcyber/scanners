#!/bin/bahs

sudo bash /home/d43d3lu5/shell-scripts/web-vuln.sh

sudo bash web-vuln.sh

dirb http://$target/ > /home/d43d3lu5/$name/web-vuln/dirb/web.dir.txt

nikto -host$target -dir_traversal -cgi -paths -headers 
