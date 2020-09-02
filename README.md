# netpeak-test

NetPeak Ansible test v0.55

# ToDo

Необходимо написать сценарий установки на Ansible следующих пакетов:
- php nginx mysql redis phpmyadmin redisadmin

Учесть следущее:
- Установшик автоматически определяет архитектуру (red-hat, debian) и выполняет нужный сценарий:
- Для каждого пакета можно выбрать версию.
- Для каждого пакета выставлены теги.
- Для nginx и php можно выбрать модули которые необходимо установить.

Для написанного сценария расписать документацию.

# Changes

...
- Added test's
- Added user 'deployer' for Ansible automatization
- Added FAQ for playbook

# FAQ

Edit vars at ./playbook.yml
Edit group_vars at ./group_vars/all
Edit defaults at ./roles/*/tasks/defaults/main.yml
Any other vars by OS to: ./roles/*/tasks/vars/*.yml


