 <%@ page import="java.sql.*" %>
 <%
      String id=request.getParameter("id");
    String name=request.getParameter("name");
      String category=request.getParameter("category");
    String price=request.getParameter("price");
    String active=request.getParameter("active");
    
    try
    {
    	   Class.forName("com.mysql.cj.jdbc.Driver");
    	    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techLive","root","root");
    	    String s="insert into product values(?,?,?,?,?)";
    	    PreparedStatement p=cn.prepareStatement(s);
    	    
    	    
    	    p.setString(1,id);
    	    p.setString(2,name);
    	    p.setString(3,category);
    	    p.setString(4,price);
    	    p.setString(5,active);
    	    p.executeUpdate();
    	    response.sendRedirect("addNewProduct.jsp?msg=done");
    }
    catch(Exception e)
    {
    	System.out.println(e);
    	response.sendRedirect("addNewProduct.jsp?msg=wrong");
    }
    %>
    