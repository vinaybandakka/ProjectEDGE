########### Adding tcp 8080, 80 and 3306 to firewall ########
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp  
sudo firewall-cmd --permanent --zone=internal --add-port=8080/tcp
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp  
sudo firewall-cmd --permanent --zone=internal --add-port=80/tcp
sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp  
sudo firewall-cmd --permanent --zone=internal --add-port=3306/tcp
sudo firewall-cmd --reload
sudo systemctl restart firewalld.service

