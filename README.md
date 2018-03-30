# JEE Assignment

## Technologies Used
  - **Language:** Java, JSTL & Spring Expression Language
  - **Frameworks:** Spring MVC, JDBC
  - **Database:** MySQL
  - **FrontEnd:** HTML5, CSS3, JSP
  - **Server:** Pivotal TC Server

## Project Details
1. **Initial Setup**
	1. Created a maven Spring MVC web application project _jee-assignment_ and configured to run on a Pivotal TC server.
	2. Added dependencies to the _pom.xml_ such as spring-mvc, spring-jdbc, mysql_connector
2. **Technical Details**
	1. Added a Web application resource to access the page using the url http://localhost:8080/assignment/
	2. Created database tables to include USER_MASTER, USER_ACCOUNT, ORDER_DETAILS and ITEM. _Refer data.sql_
3. **Application Run**
	1. Start the server. (Pivotal TC Server)
	2. Run the _jee-assignment_ application on the server by RightClick the project folder, select _Run As_ and  _Run on Server_.
	3. In the run wizard select next.
	4. In the next screen move _jee-assignment_ from Available section to Configured Section.
	5. Then click Finish.
	6. The application will run and open the index page (http://localhost:8080/assignment/)
	7. Login with valid user email and password. Refer db scripts (username: azad@invalid.com, password: Welcome1).
	8. User order details can be viewed once the login is successful.
	
## CAVEATS
1. Couldn't implement Spring Security because of limited expertise in Security.
2. Couldn't able to write unit test cases because of shortage of time.