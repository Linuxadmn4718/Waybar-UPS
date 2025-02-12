#!/bin/bash

# Remove leading/trailing whitespaces
STATUS=$(apcaccess -p STATUS | xargs)
LINEV=$(apcaccess -p LINEV | xargs)

# Get the time left
TIMELEFT=$(apcaccess -p TIMELEFT)
MINSLEFT=$(echo $TIMELEFT | awk -F'.' '{print $1}')


if [ "$LINEV" == "0.0 Volts" ]; then
  printf '{"text":" %sm","class":"linev"}' "$MINSLEFT"
else
     if [ "$STATUS" == "ONLINE SLAVE" ] || [ "$STATUS" == "ONLINE" ]; then
       printf '{"text":" %sm","class":"enabled"}' "$MINSLEFT"
     else
       printf '{"text":" OFFLINE","class":"disabled"}'
     fi
fi
