<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
   <link rel="stylesheet" href="CSS/styles.css">
   <style>
   @charset "ISO-8859-1";
@import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Viga&display=swap');


.homepackage
{
    width: 450px;
    height: 350px;
    background-color: #d6d6c2;
    padding: 5px;
    border-radius: 20px;
    float: left;
    margin-left: 30px;
}

.homepackagetitle
{
    text-align: center;
    font-family: kanit;
    font-size: 25px;
    padding: 15px;
    color: #ffffff;
    background-color: #009900;
    width: auto;
    height: 30px;
    
}

.texttitle
{
    font-size: 25px;
    padding: 2px;

}

.textdes
{
    font-size: 18px;
    padding: 2px;
    
}

.homepackbtn
{
    margin-left: 300px;
    width: 120px;
    height: 40px;
    border-radius: 10px;
    background-color: #000000;
    
    
}

.homepacklnk
{
    color: #b3b3b3;
    text-decoration: none;
}

.homepacklnk:hover
{
    color: #009900;
}
       
        .background {
            
            background-size: cover;
            background-position: center;
            min-height: calc(100vh - 100px); 
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }
        .background img {
            max-width: 100%; 
            max-height: 100%; /* Ensure the image does not exceed the height of its container */
            display: block; /* Ensure the image is displayed as a block element */
            margin: auto; 
        }

        
        .overlay {
            display: block; 
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); 
            z-index: 1000; 
        }

        
        .modal {
            display: block;
            position: absolute;
            top: 50%; 
            left: 50%; 
            transform: translate(-50%, -50%); 
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 5px;
            padding: 20px;
            max-width: 400px;
            width: 100%;
            z-index: 1001; 
        }

       
        

        .login-form input[type="text"],
        .login-form input[type="password"],
        .login-form button {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 3px;
            border: 1px solid #ccc;
        }

        .login-form button {
            background-color: #333;
            color: #fff;
            cursor: pointer;
        }
        .parafooter
       {
	     text-align: center;
	     font-family: Kanit;
	     margin: 5px;
        }
        
        
        .homelogo
      {
         display: block;
          margin-left: auto;
         margin-right: auto;
        width: 15%;
        height: 15%;
      }
      .list
    {
       list-style-type: none;
       margin: 0;
       padding: 0;
       overflow: hidden;
       background-color: #009900;
    }

.item
{
    float: left;
}

.link
{
    display: block;
    color: #ffffff;
    font-family: viga;
    text-decoration: none;
    text-align: center;
    padding: 12px 16px;
}

.link:hover
{
    background-color: #001a00;
}
      .btnitem
{
	float: right;
}

.btnlink
{
    display: block;
    color: #ffffff;
    font-family: viga;
    font-size: 16px;
    text-decoration: none;
    text-align: right;
    padding: 8px 10px;
    margin: 4px 2px;
    margin-right: 10px;
    border-radius: 10px;
}

.btnlink:hover
{
    background-color: #ffffff;
    color: #000000;
}
.tourtitle
{
    text-align: center;
    font-family: viga;
    font-size: 25px;
    padding: 15px;
    color: #009900;
    background-color: #000000;
    width: auto;
    height: 30px;
    border-radius: 25px;
}

.packagesize
{
    height: 400px;
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
            <li class="btnitem"> <a class="btnlink" href="#">Login</a> </li>
        </ul>
    </header>
    


    <div class="background">
    <img src="back1.jpg" alt="Background Image">

        <div class="overlay"></div> 

        <div class="modal">

            <div class="login-form">

                <h2>Login</h2>


                <form action="RegisterLogin" method="POST">

                    <input type="text" name="email" placeholder="email" required>
                    
                    <input type="password" name="password" placeholder="Password" required>
                    

                    <button type="submit">Login</button>

                </form>
            </div>
        </div>
    </div>
    <footer>
            <p class="parafooter">
                � 2024 BEST WAY GUIDER'S PLC. ALL RIGHTS RESERVED. <br>
		        SOLUTION BY <a class="linkfooter" href="#">S P M C</a> <br>
            </p>
        </footer>

   
</body>
</html>