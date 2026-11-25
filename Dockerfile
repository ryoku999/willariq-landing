FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html
COPY logo-v3.jpeg /usr/share/nginx/html/logo-v3.jpeg
COPY version.json /usr/share/nginx/html/version.json
COPY qr.png /usr/share/nginx/html/qr.png
COPY capturas/ /usr/share/nginx/html/capturas/

EXPOSE 6000

CMD ["nginx", "-g", "daemon off;"]