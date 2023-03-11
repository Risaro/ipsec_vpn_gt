# ipsec_vpn_gt
Im use Ubuntu 20.04
VPN Docker для Филиалов от GarageTesla


Перед началом обновим пакеты 

``apt-get update``

Установим docker

``apt-get install docker.io``

Скачаем git для клонирования

``apt-get install git``

Склонируем 

``git clone https://github.com/Risaro/ipsec_vpn_gt``

Перейдем в папку 

``cd ipsec_vpn_gt``

Запустим скрипт , который сделает все за вас 

``chmod 777 *``

``./start.sh``

В этой папке находится файл конфигурации , который вам необходимо скачать через winscp или другой удобный scp client
URL : https://winscp.net/eng/download.php

Скачиваем архив с bat для автонастройкой подключения VPN на Windows 8, 10 ,11 
URL: https://github.com/Risaro/ipsec_vpn_gt/releases/download/win/auto_config_windows.zip

Перед запуском в ту же папку где и bat ``ikev2_config_import.cmd`` вложить файл конфигурации , который вы скачали через winscp
Распаковываем и запускаем
``ikev2_config_import.cmd``
Следуем инструкции
