git config --global user.email "nncmanohar@gmail.com"
git config --global user.name "Nagachandra Manohar Nelavelli"
. secure_unix_login.ksh
echo "source $PWD/secure_unix_login.ksh" >> $HOME/.bashrc
echo "set -o vi " >>  $HOME/.bashrc
