-  pulled nginx server image from docker registry.
    * docker build -t hello-docker . 

-  ran a docker container for the server on port 80
    * docker run --name docker-CI-pipeline -d hello-docker -p 80:80 -v ./content:/usr/share/nginx/html

- created a basic hello world app and containerised it.

- created another endpoint for a simple greeting app
    * created and populated an nginx.conf file to handle esposing both endpoints on the server.

- created a dockerfile to handle build configuration

- created a CI yml file for the pipeline
