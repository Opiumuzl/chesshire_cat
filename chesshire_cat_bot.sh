#!/bin/bash

BOT_TOKEN="token" #You token
CHAT_ID="id" #You chatID
HN=$(hostname) # Displaying the hostname for the "header" where it came from

#Function for send message to telegram chat
send_telegram() {
    local message="$1"
    curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
        -d "chat_id=${CHAT_ID}" \
        -d "text=$HN-->$message" \
        -d "parse_mode=" > /dev/null 2>&1
}

#We extract the necessary "inputs" from the logs and write them to a variable (You can shorten the grep block if necessary)
tail -Fn1 /var/log/auth.log \
  | grep --line-buffered "sshd" \
  | grep -E --line-buffered "(Accepted|Failed|Invalid user|Disconnected |Connection reset)" \
  | while IFS= read -r line; do
        send_telegram "$line"
    done

