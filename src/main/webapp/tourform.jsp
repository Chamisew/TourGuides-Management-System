<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Tour Form</title>


<!-- validation part -->
<script>
    function validateForm() {
        var fullname = document.getElementById("fullname").value;
        var email = document.getElementById("email").value;
        var phone = document.getElementById("phone").value;
        var tourguide = document.getElementById("tourguide").value;
        var language = document.getElementById("language").value;
        var paymentmethod = document.getElementById("paymentmethod").value;
        var emergencyname = document.getElementById("emergencyname").value;
        var relationship = document.getElementById("relationship").value;
        var emergencyphone = document.getElementById("emergencyphone").value;

        if (fullname == "" || email == "" || phone == "" || tourguide == "" || language == "" || paymentmethod == "" || emergencyname == "" || relationship == "" || emergencyphone == "") {
            alert("All fields must be filled out");
            return false;
        }

        // Email validation
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }

        // Phone number validation
        var phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phone)) {
            alert("Please enter a valid 10-digit phone number");
            return false;
        }

        // Emergency phone number validation
        if (!phoneRegex.test(emergencyphone)) {
            alert("Please enter a valid 10-digit emergency phone number");
            return false;
        }

        return true;
    }
</script>




<!-- style field -->
<style>

.form-container {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-field {
    margin-bottom: 20px;
}

.form-field label {
    display: block;
    font-weight: bold;
}

.form-field input {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 3px;
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
    background-color: #333; 
    color: #fff; 
    padding: 10px 20px; 
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); 
}

.homelogo {
    max-width: 120px; 
    height: auto; 
}

.list {
    list-style-type: none; 
    margin: 0;
    padding: 0;
    display: flex;
}

.item {
    margin-right: 15px; 
}

.link {
    text-decoration: none;
    color: #fff;
    font-size: 16px; 
    transition: color 0.3s; 
}

.link:hover {
    color: #ffc107; 
}

.btnlink {
    text-decoration: none;
    color: #333;
    background-color: #ffc107; 
    padding: 8px 12px;
    border-radius: 20px; 
    font-size: 14px; 
    transition: background-color 0.3s; 
}

.btnlink:hover {
    background-color: #ffca28; 
    color: #333; 
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

<div class="form-container">
    <h2>Personal Information</h2>
    <form action="addTour" method="POST" onsubmit="return validateForm()">
        <!-- Personal Information -->
        <div class="form-field">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required>
        </div>
        <div class="form-field">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required> 
        </div>
        <div class="form-field">
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required>
        </div>

        <h2>Tour Guide</h2>
        <!-- Tour Guide Information -->
        <div class="form-field">
            <label for="tourguide">Tour Guide Name:</label>
            <input type="text" id="tourguide" name="tourguide" required>
            
            
            
            
        </div>

        <h2>Desired Tour Details</h2>
        <!-- Desired Tour Information -->
        
        <div class="form-field">
            <label for="language">Language Preference:</label>
            <input type="text" id="language" name="language" required>
        </div>

        <h2>Payment Information</h2>
        <!-- Payment Information -->
        <div class="form-field">
            <label for="paymentmethod">Payment Method:</label>
            <input type="text" id="paymentmethod" name="paymentmethod" required>
        </div>

        <h2>Emergency Contact</h2>
        <!-- Emergency Contact Information -->
        <div class="form-field">
            <label for="emergencyname">Name:</label>
            <input type="text" id="emergencyname" name="emergencyname" required>
        </div>
        <div class="form-field">
            <label for="relationship">Relationship:</label>
            <input type="text" id="relationship" name="relationship" required>
        </div>
        <div class="form-field">
            <label for="emergencyphone">Phone Number:</label>
            <input type="tel" id="emergencyphone" name="emergencyphone" required>
        </div>

        <button type="submit">Submit</button>
    </form>
</div>


 <footer>
            <p class="parafooter">
                © 2024 BEST WAY GUIDER'S PLC. ALL RIGHTS RESERVED. <br>
		        SOLUTION BY <a class="linkfooter" href="#">S P M C</a> <br>
            </p>
        </footer>
</body>
</html>