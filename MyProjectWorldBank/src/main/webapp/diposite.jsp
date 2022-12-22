<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<style>
body{
	text-align: center;
    background-color: bisque;

}




#heading{
    display: inline-block;
    font-style: italic;
   
}
#dd{
  height: 50px;
  font-size: 40px;
  background-color: orange;
  color: aliceblue;
  text-transform: uppercase;
  display: inline-block;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
#main{
border: 10px orange solid;
}


</style>
<body >



<!-- Image and text -->
<nav >
    <a class="navbar-brand" href="#">
      <img src="./images.png" width="60" height="60" class="d-inline-block align-top" alt="">
     
      <h1 id="heading">
        WELCOME TO ICIC BANK
      </h1>
       

    </a>
</nav>




<div id="navvv">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="http://localhost:8080/MyProjectWorldBank/Welcome.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8080/MyProjectWorldBank/diposite.jsp">diposite</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:8080/MyProjectWorldBank/withdraw.jsp">withdraw</a>
            </li>
             <li>
             <a class="nav-link" href="http://localhost:8080/MyProjectWorldBank/transfer.jsp">Transfer</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                other option
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="http://localhost:8080/MyProjectWorldBank/login.jsp">Login</a>
                <a class="dropdown-item" href="#"></a>
                <a class="dropdown-item" href="#"></a>
              </div>
            </li>
          </ul>
        </div>
      </nav>
</div>
<br>

   <div id="main">
    <h1 id="dd" >  deposite money </h1>

   </div> 
   <br>



<form action="d1.jsp" method="post">

<div>
Acc no<input type="text" name="ac" placeholder="Account no ">

</div>
<br>
<div>
  usename<input type="text" name="um" placeholder="username " >

</div>
<br>
<div>
  Amount<input type="text" name="am" placeholder="enter Amount " >

</div>
<br>



<br>
<div>
<input type="submit" value="submit">]
</div>

</form>

</body>
</html>











<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
