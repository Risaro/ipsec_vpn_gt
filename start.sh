#!/bin/bash
echo  "- Твоя акутальная директория:;"
pwd
echo "- Ты авторизирован под именем:;"
whoami
echo ""

docker run \
    --name ipsec-vpn-server \
    --env-file vpn.env \
    --restart=always \
    -v ikev2-vpn-data:/etc/ipsec.d \
    -v /lib/modules:/lib/modules:ro \
    -p 500:500/udp \
    -p 4500:4500/udp \
    -d --privileged \
    hwdsl2/ipsec-vpn-server
docker ps
docker exec -it ipsec-vpn-server ls -l /etc/ipsec.d
docker cp ipsec-vpn-server:/etc/ipsec.d/vpnclient.p12 ./

echo ""
echo "ключ перемещен в папку"
echo ""
echo "\033[32m - Docker перезапустить контейнер : docker restart CONTAINERID;"
echo "Docker применить изменения : docker stop CONTAINERID \ docker rm CONTAINERID   - и запустить ./start.sh;"
echo""
echo "Если у вас случились какие то проблемы остановите конейтнер и очистите его -   docker prune -a"

echo""
echo "Created by Liksa in GarageTeslaNSK"  
