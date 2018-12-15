# docker-files
Repo to hold all base docker images

To build and upload the images to docker hub, simply run:
```sh 
./update.sh
```

#### About  & rules
Every image starting with `cs` means they are based off on the `consul-service` image and must depend on it during build time (see docker-compose.yaml).