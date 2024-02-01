echo '#####################################################'
echo "##              RUNGING    NGINX.SH              ##"
echo '#####################################################'

# install nginx

apt update
apt install -y nginx

# starting nginx service

systemctl start nginx

