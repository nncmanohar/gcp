function secure_unix_login
{
	sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config_backup
	sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config_changed
	sudo chmod 777 /etc/ssh/sshd_config_changed 

	cat /etc/ssh/sshd_config_changed |
	sed 's|^ChallengeResponseAuthentication yes|ChallengeResponseAuthentication no|g' |
	sed 's|^PasswordAuthentication yes|PasswordAuthentication no|g' |
	sed 's|^PermitRootLogin without-password|PermitRootLogin no|g' > /tmp/sshd_config_changed.dat 


	sudo \mv  /tmp/sshd_config_changed.dat /etc/ssh/sshd_config_changed 

	diff /etc/ssh/sshd_config  /etc/ssh/sshd_config_changed 
	sudo mv /etc/ssh/sshd_config_changed  /etc/ssh/sshd_config



	sudo systemctl reload sshd
	sudo systemctl status sshd
	sudo systemctl reboot
}
