# frp
frp with docker

# steps
```
cd /root/frp
docker build -f Server.Dockerfile -t wenneryu/linux_frps:v1 .  
docker run -itd -p 20000-20030:20000-20030 -p 20000-20030:20000-20030/udp --name frps wenneryu/linux_frps:v1  

firewall-cmd --add-port=20000-20030/udp --permanent  
firewall-cmd --add-port=20000-20030/udp --permanent  
firewall-cmd --reload  

docker login  
docker push wenneryu/linux_frps:v1
```

# ref
frp <https://github.com/fatedier/frp>