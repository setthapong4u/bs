FROM nginx:1.24-alpine
ENV USER=admin
ENV PASS=password
RUN echo '<h1>Hello, World!</h1><p>This is a vulnerable Nginx server v1</p>' > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]