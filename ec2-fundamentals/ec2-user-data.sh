# !/bin/bash
# ec2 사용자 데이터에 들어갈 내용

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

echo "hello word from  <h1>$(hostname -f)</h1>" > /var/www/html/index.html