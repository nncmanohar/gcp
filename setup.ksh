git config --global user.email "nncmanohar@gmail.com"
git config --global user.name "Nagachandra Manohar Nelavelli"
git config --global push.default simple
. setup_desktop_connection.ksh
echo "source $PWD/secure_unix_login.ksh" >> $HOME/.bashrc
echo "set -o vi " >>  $HOME/.bashrc
