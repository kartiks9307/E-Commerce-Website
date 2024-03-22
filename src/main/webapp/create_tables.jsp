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
       
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techLive","root","root");
    
       
       
      
       String s1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
       String s="create table product(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
       String s2="create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
       String s3="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
       System.out.println(s3);
       PreparedStatement p=cn.prepareStatement(s3);
       p.execute(s3);
       
      // System.out.print(s);
     //  int i=p.executeUpdate(s);
       System.out.print("Table Created");
       cn.close();
       
       
       
       %>

</body>
</html>