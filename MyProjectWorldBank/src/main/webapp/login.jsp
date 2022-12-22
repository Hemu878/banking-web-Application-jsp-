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



</style>
<body >



<!-- Image and text -->
<nav >
    <a class="navbar-brand" href="#">
      <img src="" alt="sorry">
     
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

   <div>
    <h1 id="dd" >  login  </h1>

   </div> 
   <br>



   <form action="login1.jsp" method="post">
    <div>
          <label for="us">usename:</label>
          <input type="text" name="um" id="us" required placeholder="please enter gmail">
      </div>
      <br>
  
      <div>
          <label for="pwd">password:</label>
          <input type="password" name="ps" id="pwd" required placeholder="enter your password">
      </div>
      <br>
  
      <input type="Submit" value="submit">
      <br>
      <br>
      <div>
          <a href=""><button>forgot my password</button></a>
      </div>
  
  </form>
  

</body>
</html>