# create a non root user
groupadd $USER
useradd -g $USER -G root -s /bin/bash $USER
mkdir -p /home/$USER
chown $USER:$USER /home/$USER

# allow sudo without password
echo "$USER ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers
