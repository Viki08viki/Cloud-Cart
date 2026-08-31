#!/bin/bash
set -eux

dnf install -y httpd git docker

systemctl enable httpd
systemctl start httpd

systemctl enable docker
systemctl start docker

usermod -aG docker ec2-user

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>CloudCart</title>
</head>
<body>
    <h1>CloudCart Terraform Infrastructure</h1>
    <p>This EC2 instance was provisioned automatically using Terraform.</p>
</body>
</html>
EOF

