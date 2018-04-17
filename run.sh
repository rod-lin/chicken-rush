#! /bin/bash

systemctl daemon-reload
systemctl restart bluetooth

./hidclient -e3 &
systemctl restart bluetooth.service
bluetoothctl << EOF
power on
agent on
default-agent
EOF

