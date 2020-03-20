FROM    nginx
LABEL   author="hanrui"
# LABEL   joynop.io/name=joynop-cra
COPY    app /root/app
COPY    config /root/config
COPY    config/default.conf /etc/nginx/nginx.conf
COPY    config/mime.types /etc/nginx/mime.types

EXPOSE  80 443

 