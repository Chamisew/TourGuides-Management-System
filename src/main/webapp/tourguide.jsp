<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>tour guide</title>


<style>


.table {
  width: 100%;
  border-collapse: collapse;
  border: 1px solid #ddd;
}


.table th {
  padding: 8px;
  text-align: left;
  background-color: #f2f2f2;
  border-bottom: 1px solid #ddd;
}


.table td {
  padding: 8px;
  border-bottom: 1px solid #ddd;
}


.table tbody tr:nth-child(odd) {
  background-color: #f9f9f9;
}


.table th:hover {
  background-color: #ddd;
}


button {
    padding: 10px 20px;
    background-color: #333;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #555;
}
header {
    background-color: #333; /* Change to your desired color */
    color: #fff; /* Text color */
    padding: 10px 20px; /* Adjust padding as needed */
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
}

.homelogo {
    max-width: 120px; /* Adjust the maximum width of the logo */
    height: auto; /* Ensures the logo does not distort */
}

.list {
    list-style-type: none; /* Removes bullet points */
    margin: 0;
    padding: 0;
    display: flex;
}

.item {
    margin-right: 15px; /* Adjust spacing between menu items */
}

.link {
    text-decoration: none;
    color: #fff;
    font-size: 16px; /* Adjust font size */
    transition: color 0.3s; /* Add transition for smooth color change */
}

.link:hover {
    color: #ffc107; /* Change color on hover */
}

.btnlink {
    text-decoration: none;
    color: #333;
    background-color: #ffc107; /* Change background color */
    padding: 8px 12px; /* Adjust padding */
    border-radius: 20px; /* Round the corners */
    font-size: 14px; /* Adjust font size */
    transition: background-color 0.3s; /* Add transition for smooth color change */
}

.btnlink:hover {
    background-color: #ffca28; /* Change background color on hover */
    color: #333; /* Change text color on hover */
}

footer
{
	background-color: #181b22;
	color: #d3b469;
	padding: 10px 0px 10px 0px;
}

.parafooter
{
	text-align: center;
	font-family: Kanit;
	margin: 5px;
}

.linkfooter
{
	text-decoration: none;
	color: #d3b469;
}

.linkfooter:hover
{
	color:white;
}


</style>


</head>
<body>

<header>
    
        <img class="homelogo" src="bestwayguiderslogo.png" alt="Best Way Guider's" width="600" height="300">

        <ul class="list">
            <li class="item"> <a class="link" href="#">Home</a> </li>
            <li class="item"> <a class="link" href="#">About Us</a> </li>
            <li class="item"> <a class="link" href="#">Guides</a> </li>
            <li class="item"> <a class="link" href="#">Guide Packages</a> </li>
            <li class="item"> <a class="link" href="contact us.jsp">Contact Us</a> </li>
            <li class="btnitem"> <a class="btnlink" href="#">Register</a> </li>
            <li class="btnitem"> <a class="btnlink" href="reglogin.jsp">Login</a> </li>
        </ul>
    </header>


    
<table class="table">
  <thead>
    <tr>
      <th scope="col">TourguideID</th>
      <th scope="col">Name</th>
      <th scope="col">LanguageSpoken</th>
      <th scope="col">ContactInfo</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach var="tourg" items="${tourgui}">
  <tr>
      <td>${tourg.tougID }</td>
      <td>${tourg.name}</td>
      <td>${tourg.spokLang }</td>
      <td>${tourg.contact }</td>
      
  </tr>
  
  </c:forEach>
  
  </tbody>
  
</table>

 
</body>
</html>