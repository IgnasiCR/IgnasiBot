#!/bin/bash

USERID="-1001152952278" # IDENTIFICADOR DEL GRUPO Y/O USUARIO.
KEY="" # TOKEN DEL BOT.
URL="https://api.telegram.org/bot$KEY/sendMessage"

fecha=$(date +%T)
MSG="¡DING, DONG...! ¡DING, DONG...! Son las: $fecha"
curl -s --max-time 10 -d "chat_id=$USERID&disable_web_page_preview=1&text=$MSG" $URL
