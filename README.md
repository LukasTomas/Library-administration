### Instruction for running the application

1) Build the Docker Image:
```
docker build --tag django-app
```
2) Run a container from the build Docker Image
```
docker run -d -p 8000:8000 django-app
```
