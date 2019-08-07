echo "## RUNGING NGINX.SH ##"

# install nginx

yum update
yum install -y epel-release

yum install -y nginx

# starting nginx service

systemctl start nginx

# auto start nginx on startup

chkconfig nginx on
