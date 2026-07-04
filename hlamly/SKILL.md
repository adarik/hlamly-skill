---
name: hlamly
description: >
  SSH-подключение к серверу hlamly (peailvrupt, 85.198.101.223).
  Используй когда пользователь говорит "hlamly", "/hlamly", "grok hlamly",
  "подключись к hlamly", "открой hlamly", "зайди на hlamly" или просит
  выполнить команду на этом сервере.
metadata:
  short-description: "SSH к серверу hlamly"
---

# Hlamly — удалённый сервер

Сервер **hlamly** — VPS Beget (`peailvrupt`), Ubuntu, nginx + docker + pm2.

## Подключение

Учётные данные: `~/.grok/skills/hlamly/references/credentials.env`

Скопируй `references/credentials.env.example` → `references/credentials.env` и укажи пароль.

### Быстрый скрипт

```bash
# Проверка связи + базовая инфо
~/.grok/skills/hlamly/scripts/ssh.sh

# Выполнить команду на сервере
~/.grok/skills/hlamly/scripts/ssh.sh 'команда'

# Интерактивная сессия
~/.grok/skills/hlamly/scripts/ssh.sh --interactive
```

### Прямой SSH (если скрипт недоступен)

1. Прочитай `references/credentials.env`
2. Выполни:

```bash
sshpass -p '<пароль>' ssh -o StrictHostKeyChecking=no root@85.198.101.223 '<команда>'
```

## Поведение агента

1. При упоминании **hlamly** — сразу подключайся, не спрашивай IP/логин/пароль.
2. Если пользователь просит «подключиться» без команды — запусти `ssh.sh` и покажи статус сервера.
3. Если просит выполнить задачу — делай всё на hlamly через `ssh.sh '...'`, не на локальной машине.
4. Кратко сообщай результат; не выводи пароль в ответ пользователю.

## Справка по серверу

| Параметр | Значение |
|----------|----------|
| Имя | hlamly |
| Hostname | peailvrupt |
| IP | 85.198.101.223 |
| ОС | Ubuntu, 2 CPU, ~4 GB RAM, 38 GB диск |
| Сервисы | nginx, docker, pm2, fail2ban |
