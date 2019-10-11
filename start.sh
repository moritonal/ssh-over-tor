# - Convert PPK file to OpenSSH
if [ -f "/tmp/private.ppk" ]
then
    echo "Converting and installing /tmp/private.ppk"
    puttygen /tmp/private.ppk -O private-openssh -o /root/id_dsa
fi

# - Convert an id_dsa passed in
if [ -f "/tmp/id_dsa" ]
then
    echo "Installing /tmp/id_dsa"
    cp /tmp/id_dsa /root/id_dsa
fi

# - Install them
if [ -f "/root/id_dsa" ]
then
    echo "Installing ~/id_dsa"
    mkdir -p ~/.ssh
    mv -i ~/id_dsa* ~/.ssh
    chmod 600 ~/.ssh/id_dsa
fi

# - Connect

echo "Starting SSH connection over TOR"
exec torsocks ssh -oStrictHostKeyChecking=no $@