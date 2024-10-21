FROM alpine:latest

RUN apk add --update nginx

COPY cuspage.html /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/http.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
