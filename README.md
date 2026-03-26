![Language](https://img.shields.io/github/languages/top/Opiumuzl/chesshire_cat)
![Human coded](https://img.shields.io/badge/human-coded-green?logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIiBzdHJva2U9IiNmZmZmZmYiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBjbGFzcz0ibHVjaWRlIGx1Y2lkZS1wZXJzb24tc3RhbmRpbmctaWNvbiBsdWNpZGUtcGVyc29uLXN0YW5kaW5nIj48Y2lyY2xlIGN4PSIxMiIgY3k9IjUiIHI9IjEiLz48cGF0aCBkPSJtOSAyMCAzLTYgMyA2Ii8+PHBhdGggZD0ibTYgOCA2IDIgNi0yIi8+PHBhdGggZD0iTTEyIDEwdjQiLz48L3N2Zz4=)
# chesshire_cat
A quick script to monitor SSH authentication.
### Create bot and ChatID.

write https://t.me/BotFather:
```
/start
/newbot
`YOU_NAME_BOT`
`YOU_NAME_BOT_bot`
```

You will receive your token in a message:
```
 Done! Congratulations on your new bot. You will find it at t.me/NAME_BOT_bot. You can now add a description, about section and profile picture for your bot, see /help for a list of com    mands. By the way, when you've finished creating your cool bot, ping our Bot Support if you want a better username for it. Just make sure the bot is fully operational before you do thi    s.
Use this token to access the HTTP API:
----TOKEN----
Keep your token secure and store it safely, it can be used by anyone to control your bot.
For a description of the Bot API, see this page: https://core.telegram.org/bots/api
```

Now, go to `my profile` and copy `id`.
> [!tip] 
> If you don't see the `id` go to `settings`--->`advanced`--->`Experimental settings`--->`Show Peer IDs in Profile` `ENABLE`


> [!caution] 
> use root 
## Clone repo:

```sh
git clone git@github.com:Opiumuzl/chesshire_cat.git
```


## Update scripts and move `.sh` & `.service`

```sh
cd chesshire_cat
vim chesshire_vat_bot.sh
```


### Replace you token and chatID in rows:
```
 #!/bin/bash
BOT_TOKEN="token" #You token
CHAT_ID="id" #You chatID
...
```

### move script and service to:
```sh
chmod +x chesshire_cat_bot.sh
mv chesshire_cat_bot.sh /usr/bin
mv chesshire_cat_bot.service /etc/systemd/system
```

### reload and enable service:

```sh
systemctl daemon-reload
systemctl enable /etc/systemd/system/chesshire_cat_bot.service --now
```

## Check 
1. Go to the bot chat and enter `/start`
2. Open a second SSH session in a separate window
and experiment with logins:
```
Successful/unsuccessful/incorrect user/incorrect password...
```
3. View notifications from the bot in the Telegram chat


# P.S.
This isn't the final version and will be updated as I have time and inclination. Your questions are welcome.

Don't forget to rate it.
