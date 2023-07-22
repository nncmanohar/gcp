set -o vi

git config --global user.email "nncmanohar@gmail.com"
git config --global user.name "Nagachandra Manohar Nelavelli"
git config --global push.default simple

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/rsa_github
