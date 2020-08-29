#!/bin/sh

mkdir -p ~/.ssh && cat id_rsa.pub >> ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && chown -R $USER:$USER ~/.ssh
rm -f id_rsa.pub

sed -i 's/#PubkeyAuthentication/PubkeyAuthentication/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin/PermitRootLogin/' /etc/ssh/sshd_config

### starting services at start container
service ssh start

### for "daemon" mode by container
if [ "$1" = "-d" ]
 then
  while true
   do sleep 1000
  done
fi

### bash command line to debug
if [ "$1" = "-bash" ]
 then
  /bin/bash
fi

### for continuous run if needed
# exec "$@"
