```
docker run \
-itdp 9000:9000 \
--restart=always  \
--privileged=true \
--name=epay \
--hostname=epay \
-e TZ=Asia/Shanghai \
-v /opt/mapper/website/epay:/var/www/html \
epay:latest

```

```
chown -R www-data:www-data /opt/mapper/website/epay
```
