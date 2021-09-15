# Mail Casting

## Prerequisits and their uses
1. JSP and Java Servlets are used to interact with the server.
2. JDBC drivers are used to make it connect with the databases.
3. Apache-Tomcat Server is used.
 
### JSP Files: 
#### compose, contactus, delete, header, home, inbox, index, register, sent
### Servlets:
#### Compose, Login, Logout, Register
### Classes: 
#### GetCon, RegisterUser, SendMessage, VerifyLogin
### Libraries:
#### servlet-api.jar, tomcat-jdbc.jar, mysql-connector-java-5.0.8-bin.jar

## Concept
* We are using **MVC(Model View Controller)** pattern for implementing user interface.
* It divides a given application into three interconnected parts.
    JSP --(input)--> Servlet --(response)--> JDBC --(show)--> JSP
* HTTP is a "stateless" protocol which means each time a client retrieves a Webpage, the client opens a separate connection to the Web server and the server automatically does not keep any record of previous client request.
* We are using a single session for each user. We are giving the new session when the user log ins and close the session when user logs out. If we don't do that, session information will be lost and we won't be able to extract any information out of it.
* Java's garbage collection close the request and response objects created by the servlet that's how we ensure **No Memory Leakage**

