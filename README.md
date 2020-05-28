# CMAK-docker  

 Dockerfile of  CMAK (kafka-manager https://github.com/yahoo/CMAK) 
   
## Base Docker Image  openjdk:14-jdk-alpine  
## Howto   
### Quick Start  
docker run -p 9998:9000 --network=yourzkandkafkanetwork -e ZK_HOSTS=zk1:2181,zk2:2181,zk3:2181 --name cmak voidtor/cmak

### DOCKER COMPOSE  
#### step 1  
 create a network:  
 
 docker network create yourzkandkfkanetwork  
#### step 2  

change the networkname in docker-compose.yml ( change - "code_default" to - yourzkandkafkanetwork )with yourzkandkafkanetwork   

#### step 3  
docker-compose up .  



 

