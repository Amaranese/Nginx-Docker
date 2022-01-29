# copy current directory (html file) into our nginx location
FROM nginx:alpine
COPY . /usr/share/nginx/html