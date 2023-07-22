function public_key_setup
{
cat>/tmp/temp.dat<<-EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDjsRYbQwqbRsWYAqxx152Ph+N6wxG+bkW7Q+OqlWcz6LNG7aeMvY5dhDXC3jk0MFXXCN+P2EwrW2+MkUa8iZmnRP21Nm0RUNulcU/O/xF0y8XzcwDlBinZQMtx+kLJ2upm7aqgDmGFU/1znMfQFCNvfyRqUaq0h9F3QSGiKz3FGqYoV7wkQe9VtJLVrFLHVab3hMZk1hnZSZdzPJauLZ4JMO9NL18M+lb4qnbxZAx/GdiN2BLe0Kw/CpmTPkndI8cpPeeYhiD50Ov+x4qNqOVad3YHUQLcrN1TB7Vanbmj/3aPRTBpGfcUD/L4ubWDjuVpZdyZqqw6aeYkM+igg8y1 rsa-key-20220801
EOF
cat /tmp/temp.dat >> /home/cloud_user/.ssh/authorized_keys ; rm -f /tmp/temp.dat

echo "Public key is added to /home/cloud_user/.ssh/authorized_keys"
cat /home/cloud_user/.ssh/authorized_keys
echo "===================================================="
}
