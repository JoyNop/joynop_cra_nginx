# joynop_cra_nginx


本仓库为`joynop_cra_framework`在`DOCKER`中所用的NGINX WEB服务


```bash
docker pull joynop/testnginx
```


```bash
docker run --name testnginx -d -p 10086:80 testnginx
```

可以GIT本仓库代码，将VUE/REACT前端build完成后代码放入`app`文件夹中


```bash
docker build -t testnginx .
```

```bash
docker run --name testnginx -d -p 10086:80 testnginx
```