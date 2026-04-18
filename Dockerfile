FROM nginx

RUN apt-get update && apt-get install -y curl

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY content/index.html /usr/share/nginx/html
COPY content/greeting.html /usr/share/nginx/html


ENV NODE_ENV=development
ENV PORT=3000

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
 