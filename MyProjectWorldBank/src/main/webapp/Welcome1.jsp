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
</head>
<body>


<%
boolean status=false;
String username=request.getParameter("nm");
String password=request.getParameter("ps");
String Address=request.getParameter("add");


//convert int to Interger given data to store the database




//===================================================

		String url="jdbc:mysql://localhost:3306";
		String user="root";
		String pass="root";
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=null;
		PreparedStatement pr=null;
		ResultSet rs=null;
		
		
			
			
			
			 con=DriverManager.getConnection(url,user,pass);
			 pr=con.prepareStatement("select * from  MyBank.Employee where username='"+username+"'and password='"+password+"'");
			rs=pr.executeQuery();
			status=rs.next();
			
			if(status)
			{
				out.println("your account already created...!!!! please login ");
				RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
				rd.include(request, response);
			}
			else
			{
				Connection con1=DriverManager.getConnection(url,user,pass);
				PreparedStatement pr1=con1.prepareStatement("insert into MyBank.Employee(username,password,address) value(?,?,?)");
					
				
					pr1.setString(1, username);
					pr1.setString(2, password);
					pr1.setString(3, Address);
					
					pr1.execute();
					
					out.println("Your account  created...!!!! please login ");
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);

					
					
			}
			
				
			
	
			
			
			
			
			
			
			
%>
</body>
</html>