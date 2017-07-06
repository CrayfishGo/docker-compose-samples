# Running with docker-compose
首先执行以下命令
```
docker-compose up --build -d
```

然后在执行

```
docker run --rm -it zvelo/redis-trib create --replicas 1 <ip1>:<port1> <ip2>:<port2> <ip3>:<port3>
```