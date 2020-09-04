# netpeak-test

NetPeak Ansible test v1.0

# ToDo

Необходимо написать сценарий установки на Ansible следующих пакетов:
- php nginx mysql redis phpmyadmin redisadmin

Учесть следущее:
- Установшик автоматически определяет архитектуру (red-hat, debian) и выполняет нужный сценарий:
- Для каждого пакета можно выбрать версию.
- Для каждого пакета выставлены теги.
- Для nginx и php можно выбрать модули которые необходимо установить.

Для написанного сценария расписать документацию.

# FAQ

- Copy yours 'id_rsa.pub' to current directory. This is for Ansible ssh authorized_keys.
- Build image for tests: 'docker build . --tag netpeak:latest'
- Run container: 'docker run -d -p 8181:80 --privileged netpeak:latest'
- Run 'ansible-playbook playbook.yml' with next options:
  - Edit GLOBAL vars at ./playbook.yml
  - Edit defaults for TASKS at ./roles/*/tasks/defaults/main.yml
  - Any other vars by OS specific too: ./roles/*/tasks/vars/*.yml

# Changes

...
- Added test's
- Added user 'deployer' for Ansible automatization
- Added FAQ for playbook
- Done common role
- Done mysql role
- Exclude all roles from common

...

need to add:
- 1st login by ssh with 'username' & 'password', add 'deployer' and when add pubkey to authorized_hosts...
