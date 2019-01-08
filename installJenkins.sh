sudo yum -y install epel-release
sudo yum -y update
sudo yum -y install java-1.8.0-openjdk.x86_64
sudo cp /etc/profile /etc/profile_backup
source /etc/profile
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y install jenkins
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --reload
sudo reboot