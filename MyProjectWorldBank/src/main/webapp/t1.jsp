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


String Acc1=request.getParameter("Acc1");
String username1=request.getParameter("un1");

int AccNo1=Integer.parseInt(Acc1);
//==========================================================
String Acc2=request.getParameter("Acc2");
String username2=request.getParameter("un2");
String Amount=request.getParameter("am1");
//=========================================================
int AccNo2=Integer.parseInt(Acc2);
int amountn=Integer.parseInt(Amount);


String url="jdbc:mysql://localhost:3306";
String user="root";
String pass="root";


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=null;
PreparedStatement pr=null;
ResultSet rs=null;

con=DriverManager.getConnection(url,user,pass);
pr=con.prepareStatement("select * from MyBank.Employee where AccNo=?");

pr.setInt( 1, AccNo1);

rs=pr.executeQuery();

status=rs.next();

if(status==true)
{
	
	
	Connection con1=DriverManager.getConnection(url,user,pass);
	PreparedStatement pr1=con.prepareStatement("select * from MyBank.Employee where AccNo=?");
	pr1.setInt( 1, AccNo1);
	ResultSet rs1=pr1.executeQuery();
	
	
	
	int dataamount=0;
	if(rs1.next())
	{
		dataamount=rs1.getInt(4)-amountn;  //for withdraw calculation
		
		
		
		Connection con2=DriverManager.getConnection(url,user,pass);
		PreparedStatement pr2=con.prepareStatement("update MyBank.Employee set Amount=? where AccNo='"+AccNo1+"'");
		pr2.setInt(1,dataamount );
		pr2.executeUpdate();
		
		
		
	}
	else
	{
		out.println("soory 2.......");
	}
}
if(status==true)
{
	Connection con1=DriverManager.getConnection(url,user,pass);
	PreparedStatement pr1=con.prepareStatement("select * from MyBank.Employee where AccNo=?");
	pr1.setInt( 1, AccNo2);
	ResultSet rs1=pr1.executeQuery();
	int dataamount=0;
	if(rs1.next())
	{
		dataamount=rs1.getInt(4)+amountn;  //for withdraw calculation
		
		
		
		Connection con2=DriverManager.getConnection(url,user,pass);
		PreparedStatement pr2=con.prepareStatement("update MyBank.Employee set Amount=? where AccNo='"+AccNo2+"'");
		pr2.setInt(1,dataamount );
		pr2.executeUpdate();
		RequestDispatcher rd=request.getRequestDispatcher("transfer.jsp");
		rd.include(request, response);
		out.println("<html><style>h1{height: 50px;width: auto;background-color: aqua ;}</style><body><h1> Successfully "+amountn+" "+"RS/- transfer to "+username2+"</h1></body></html>");
	
		
		
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("transfer.jsp");
		rd.include(request, response);
		out.println("<html><style>h1{height: 50px;width: auto;background-color: aqua ;}</style><body><h1> Wrong Acc no please check...</h1></body></html>");

	}
}


%>

</body>
</html>