FROM nginx:stable-alpine

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/routes.conf.template /etc/nginx/templates/routes.conf.template

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]