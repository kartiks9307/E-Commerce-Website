<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mobileNumber=request.getParameter("mobileNumber");
    String securityQuestion=request.getParameter("securityQuestion");
    String answer=request.getParameter("answer");
    String password=request.getParameter("password");
    String address="";
    String city="";
    String state="";
    String country="";
    try
    {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techLive","root","root");
    String s="insert into users values(?,?,?,?,?,?,?,?,?,?)";
    PreparedStatement p=cn.prepareStatement(s);
    
    
    p.setString(1,name);
    p.setString(2,email);
    p.setString(3,mobileNumber);
    p.setString(4,securityQuestion);
    p.setString(5,answer);
    p.setString(6,password);
    p.setString(7,address);
    p.setString(8,city);
    p.setString(9,state);
    p.setString(10,country);
    p.executeUpdate();
    response.sendRedirect("signup.jsp?msg=valid");
    }
    catch(Exception e)
    {
    	System.out.println(e);
    	response.sendRedirect("signup.jsp?msg=invalid");
    }
    







%>



</body>
</html>