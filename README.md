# hlamly-skill

Grok / Claude skill for one-phrase SSH access to the **hlamly** server.

## Install

```bash
curl -L https://github.com/adarik/hlamly-skill/archive/refs/heads/main.tar.gz | tar -xz
cp -r hlamly-skill-main/hlamly ~/.grok/skills/
cp ~/.grok/skills/hlamly/references/credentials.env.example \
   ~/.grok/skills/hlamly/references/credentials.env
chmod 600 ~/.grok/skills/hlamly/references/credentials.env
chmod +x ~/.grok/skills/hlamly/scripts/ssh.sh
```

Edit `credentials.env` and set your password.

## Usage

Say **hlamly**, **/hlamly**, or **подключись к hlamly** in Grok/Claude.

## Trigger phrases

- hlamly
- /hlamly
- grok hlamly
- подключись к hlamly
- открой hlamly
- зайди на hlamly
