echo '#####################################################'
echo "##              RUNGING    NGINX.SH              ##"
echo '#####################################################'

# install nginx

apt update
apt install -y nginx

# starting nginx service

systemctl start nginx

# updating hosts


cat >> /etc/hosts << EOF
0.0.0.0 analyst.nra.io
EOF

echo '#####################################################'
cat /etc/hosts
echo '#####################################################'
