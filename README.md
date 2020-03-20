# joynop_cra_nginx


本仓库为`joynop_cra_framework`在`DOCKER`中所用的NGINX WEB服务

## 操作

```bash
docker pull joynop/joynop_nginx_test
```


```bash
docker run --name joynop_nginx_test -it -p 10088:80  -p 443:443 joynop/joynop_nginx_test
```

可以GIT本仓库代码，将VUE/REACT前端build完成后代码放入`app`文件夹中

### http访问


将http.conf复制到default.conf中
```bash
docker build -t joynop_nginx_test .
```

```bash
docker run --name joynop_nginx_test -d -p 10086:80 joynop_nginx_test
```

### https访问

将`https.conf`中内容复制到`default.conf`

```bash
docker build -t joynop_nginx_test .
docker run --name joynop_nginx_test -it -p 10088:80  -p 443:443 joynop_nginx_test 
```
通过浏览器访问 https://localhost 即可

## 特性

1. 访问重定向，详情见`rewrite/app.rewrite.conf`
2. 默认增加对VUE-ROUTER/REACT ROUTER 中`browserhistory`的支持
3. 快速适应后端API更迭版本，无需修改前端app代码，无需环境变量
