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
//for withdraw code page .............


boolean status=false;
String Acc=request.getParameter("ac");
String Amount=request.getParameter("am");
String username=request.getParameter("um");//please add

int amountn=Integer.parseInt(Amount);
int AccNo=Integer.parseInt(Acc);

String url="jdbc:mysql://localhost:3306";
String user="root";
String pass="root";


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=null;
PreparedStatement pr=null;
ResultSet rs=null;

con=DriverManager.getConnection(url,user,pass);
pr=con.prepareStatement("select * from MyBank.Employee where AccNo=?");

pr.setInt( 1, AccNo);

rs=pr.executeQuery();

status=rs.next();


if(status==true)
{
	out.println("Welcome  "+ username);
	
	Connection con1=DriverManager.getConnection(url,user,pass);
	PreparedStatement pr1=con.prepareStatement("select * from MyBank.Employee where AccNo=?");
	pr1.setInt( 1, AccNo);
	ResultSet rs1=pr1.executeQuery();
	
	
	
	int dataamount=0;
	
	if(rs1.next())
	{
		dataamount=rs1.getInt(4)-amountn;  //for withdraw calculation
		
		
		
		Connection con2=DriverManager.getConnection(url,user,pass);
		PreparedStatement pr2=con.prepareStatement("update MyBank.Employee set Amount=? where AccNo='"+AccNo+"'");
		pr2.setInt(1,dataamount );
		pr2.executeUpdate();
		
		RequestDispatcher rd=request.getRequestDispatcher("withdraw.jsp");
		rd.include(request, response);
		
		out.println("<html><style>h1{height: 50px;width: auto;background-color: aqua ;}</style><body><h1> Successfully "+amountn+" "+"RS/- withdraw...</h1></body></html>");
		out.println("<html><body><h1> Your Account Balances "+dataamount+" "+"RS/- </h1></body></html>");
	}
	
	
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("withdraw.jsp");
	rd.include(request, response);
	out.println("<html><style>h1{height: 50px;width: auto;background-color: red ;}</style><body><h1> Sorry your AccNo not match  </h1></body></html>");
}
%>

</body>
</html>