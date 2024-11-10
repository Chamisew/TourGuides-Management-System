<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Your Tours</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
}


header {
    background-color: #333;
    color: #fff;
    padding: 20px;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.homelogo {
    max-width: 200px;
    height: auto;
}

nav ul {
    list-style-type: none;
    display: flex;
}

nav ul li {
    margin-right: 20px;
}

nav ul li a {
    text-decoration: none;
    color: #fff;
    font-size: 18px;
}

nav ul li a.active {
    font-weight: bold;
}


main {
    padding: 20px;
}

.left {
    display: flex;
    flex-wrap: wrap;
}

.small-window {
    width: calc(33.33% - 20px);
    margin-right: 20px;
    margin-bottom: 20px;
    position: relative;
    overflow: hidden;
}

.small-window img {
    width: 100%;
    height: auto;
}

.cross-overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    background: linear-gradient(45deg, rgba(255, 255, 255, 0) 50%, rgba(255, 255, 255, 0.5) 50%),
                linear-gradient(-45deg, rgba(255, 255, 255, 0) 50%, rgba(255, 255, 255, 0.5) 50%);
    background-size: 20px 20px;
}

.right {
    width: calc(66.67% - 20px);
}

.info-form {
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}

.info-form h2 {
    margin-bottom: 10px;
}

.form-field {
    margin-bottom: 15px;
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
    background-color: #fff;
}

.buttons {
    display: flex;
    align-items: center;
}

.buttons button {
    padding: 10px 20px; /* Adjusted padding */
    margin-top: 10px; /* Adjusted margin */
    background-color: #333;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.buttons button:hover {
    background-color: #555;
}



footer {
    background-color: #333;
    color: #fff;
    padding: 20px 0;
    text-align: center;
}

.parafooter {
    margin-bottom: 10px;
}

.linkfooter {
    color: #fff;
    text-decoration: none;
}

.linkfooter:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

<header>
    <div class="container">
        <img class="homelogo" src="bestwayguiderslogo.png" alt="Best Way Guider's">
        <nav>
            <ul>
                <li> <a href="#" class="active">Home</a> </li>
                <li> <a href="#">About Us</a> </li>
                <li> <a href="#">Guides</a> </li>
                <li> <a href="#">Guide Packages</a> </li>
                <li> <a href="contact us.jsp">Contact Us</a> </li>
                <li> <a href="#">Register</a> </li>
                <li> <a href="reglogin.jsp">Login</a> </li>
            </ul>
        </nav>
    </div>
</header>

<main>
    <div class="container">
        <div class="left">
            <div class="small-window">
                <div class="cross-overlay"></div>
                <img src="mm1.jpg" alt="Image 1">
            </div>
            <div class="small-window">
                <div class="cross-overlay"></div>
                <img src="mm3.jpg" alt="Image 2">
            </div>
            <div class="small-window">
                <div class="cross-overlay"></div>
                <img src="back1.jpg" alt="Image 3">
            </div>
        </div>
        <div class="right">
            
                 
            <div class="buttons">
                 
                
                
               
<div>
           
            <form action="tourGuide" method="post">
             <button type="submit">Tour Guides</button>
            </form>
            <form action="toview.jsp" method="post">
                    <button type="submit">your Tours</button>
                </form>
                
                <form action="tourform.jsp" method="post">
                    <button type="submit">Add tour</button>
                </form>
            </div>
            </div>
        </div>
    </div>
</main>

<footer>
    <div class="container">
        <p class="parafooter">&copy; 2024 Your Tours. All rights reserved.</p>
        <ul>
            <li><a href="#" class="linkfooter">Privacy Policy</a></li>
            <li><a href="#" class="linkfooter">Terms of Service</a></li>
            <li><a href="#" class="linkfooter">Accessibility</a></li>
        </ul>
    </div>
</footer>


</body>
</html>
