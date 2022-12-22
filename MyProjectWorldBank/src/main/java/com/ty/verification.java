package com.ty;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.mysql.cj.jdbc.Driver;

public class verification 
{
	public static boolean checklogin(int AccNo,String username,String password)
	{
		String url="jdbc:mysql://localhost:3306";
		String user="root";
		String pass="root";
		boolean status=false;

		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pr=con.prepareStatement("select * from MyBank.Employee where AccNo=?,username=?,password=?");
			
			
			ResultSet rs=pr.executeQuery();
			status=rs.next();
		}
		catch(SQLException|ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		return status;
		
	}
}
