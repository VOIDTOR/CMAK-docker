# CMAK-docker  

 Dockerfile of  CMAK (kafka-manager https://github.com/yahoo/CMAK) 
   
## Base Docker Image  openjdk:14-jdk-alpine  
## Howto   
### Quick Start  
```  
docker run -p 9998:9000 --network=YOURZKKAFKANETWORK \  -e ZK_HOSTS=zk1:2181,zk2:2181,zk3:2181 \  --name cmak voidtor/cmak  

```    
  
### DOCKER COMPOSE  
#### step 1  
 create a network:  
 ```
 docker network create YOURZKKAFKANETWORK    
 ```  
#### step 2  

change the networkname in docker-compose.yml ( change - "code_default" to - YOURZKKAFKANETWORK )with yourzkandkafkanetwork   

#### step 3  
```
docker-compose up .   
```  

###  use username password  
  ```
  cmak:
    image: voidtor/cmak
    restart: always
    hostname: cmak
    container_name: cmak
    ports:
      - 9999:9000
    environment:
      ZK_HOSTS: zk1:2181,zk2:2181,zk3:2181
      KAFKA_MANAGER_AUTH_ENABLED: "true"
      KAFKA_MANAGER_USERNAME: username
      KAFKA_MANAGER_PASSWORD: password
    depends_on:
      - zk1
      - zk2
      - zk3
      - kafka1
      - kafka2
      - kafka3  
   ```


#### some environments:  
```  
KAFKA_MANAGER_AUTH_ENABLED
KAFKA_MANAGER_LDAP_ENABLED
KAFKA_MANAGER_LDAP_SERVER
KAFKA_MANAGER_LDAP_PORT
KAFKA_MANAGER_LDAP_USERNAME
KAFKA_MANAGER_LDAP_PASSWORD
KAFKA_MANAGER_LDAP_SEARCH_BASE_DN
KAFKA_MANAGER_LDAP_SEARCH_FILTER
KAFKA_MANAGER_LDAP_GROUP_FILTER
KAFKA_MANAGER_LDAP_CONNECTION_POOL_SIZE
KAFKA_MANAGER_LDAP_SSL
KAFKA_MANAGER_USERNAME
KAFKA_MANAGER_PASSWORD
CONSUMER_PROPERTIES_FILE  
```  






 

