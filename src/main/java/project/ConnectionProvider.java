package project;
import java.sql.*;

public class ConnectionProvider 
{ 
	public static Connection getCon()
	{
		try
		{
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techLive","root","root");
			 return cn;
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}

}
