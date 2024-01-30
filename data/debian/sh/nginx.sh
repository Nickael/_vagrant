echo "## RUNGING NGINX.SH ##"

# install nginx

apt update
apt install -y nginx

# starting nginx service

systemctl start nginx

