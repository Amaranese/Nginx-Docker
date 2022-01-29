# Simple Nginx Server 
![nginx](https://www.nginx.com/wp-content/uploads/2018/08/NGINX-logo-rgb-large.png)

To build our image, give it a name with the `-t` flag in the below command 

## BUILD 

```
docker build -t wsimage:v1 .

```
- The tag v1 is now added
- Check image is up by running 

```
docker images
```

## RUN 

run in the background using the `-d` flag as shown below where `externalIP` is your free port


```
docker run -d --name nginxC1 -v $pwd:/usr/share/nginx/html -p externalIP:80 wsimage:v1
```

Example 

```
docker run -d --name nginxC2 -v $pwd:/usr/share/nginx/html -p 8880:80 wsimage:v1
```


## LOG INTO CONTAINER 

```
docker exec -it <container name> /bin/bash
```

## NOTES

Currently ignoring nginx.conf