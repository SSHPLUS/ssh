#!/bin/bash
[[ 1 != '0' ]] && {
    [[ 1 = '0' ]] && {
        screen -dmS proxy python /etc/SSHPlus/proxy.py 80
    }
}
[[ 1 = '0' ]] && {
    screen -r -S udpvpn -X quit
    sleep 0.5
    screen -dmS udpvpn /bin/badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 10
}
