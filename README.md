# sample-webapp
This is a simple web application using Python Flask and Docker

Below are the steps required to get this working on a base linux system.
  
  - **Assuming you have Docker installed on your machine, pull the docker image**
  - **Start the Docker container**
  - **Access Application through Web Server**
   
## 1. Pull Docker image
    
  ```bash
  docker pull neerajvasudeva/sample-webapp:v1
  ```
   
## 2. Start the Docker container


```bash
docker run -p 8080:8080 neerajvasudeva/sample-webapp:v1
```


## 3. Access Application through Web Server

Open a browser and go to URL
```
http://127.0.0.1:8080                            => Welcome
http://127.0.0.1:8080/how%20are%20you            => I am good, how about you?
```
