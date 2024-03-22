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
    	    String s="update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'";
    	    PreparedStatement p=cn.prepareStatement(s);
    	    p.executeUpdate();
    	    if(active.equals("No"));
    	    {
    	    p.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
    	    }
    	    response.sendRedirect("allProductEditProduct.jsp?msg=done");
    	    }
    	    catch(Exception e)
    	    {
    	    System.out.println(e);
    	    response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
    	    }
    	    %>