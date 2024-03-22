
<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");




String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newPassword = request.getParameter("newPassword");


int check = 0;

try{
	
	 Class.forName("com.mysql.cj.jdbc.Driver");
     Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techLive","root","root");
     String s = "update users set password = ? where email = ? and mobileNumber = ?  and answer = ?";
     PreparedStatement p = cn.prepareStatement(s);
     p.setString(1, newPassword);
     p.setString(2, email);
    
     
     p.setString(3,mobileNumber);
    
     p.setString(4,answer);
    
     int i = p.executeUpdate();
  
  if(i > 0){  
    check=1;
    response.sendRedirect("forgotPassword.jsp?msg=done");
  }
  
  if(check == 0){
    response.sendRedirect("forgotPassword.jsp?msg=invalid");
  }
  
}

catch(Exception e){
  System.out.println(e);
}

%>