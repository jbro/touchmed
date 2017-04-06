#!/bin/bash
SOCKET=/Users/<changeme>/.gnupg/S.scdaemon.log
TITLE="Yubikey"
TEXT="Touch my trala la la!"
rm -f $SOCKET

while read -r line; do
  grep -q "send apdu: c=00 i=88 p1=00 p2=00 lc=35 le=256 em=0" <<< "$line" \
    && /usr/local/bin/terminal-notifier -title "$TITLE" -message "$TEXT" -sender
done

