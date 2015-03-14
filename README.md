## Add public SSH key to a server in one command
cat .ssh/id_rsa.pub | ssh hostname 'cat >> .ssh/authorized_keys'

## Execute sh script from URL
sh <(curl -s https://raw.githubusercontent.com/amigcamel/workplace/master/build_workplace)
