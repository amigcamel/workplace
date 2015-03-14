## Add public SSH key to a server in one command
cat .ssh/id_rsa.pub | ssh hostname 'cat >> .ssh/authorized_keys'

## Execute bash script from URL
bash <(curl -s https://github.com/amigcamel/workplace.git)
