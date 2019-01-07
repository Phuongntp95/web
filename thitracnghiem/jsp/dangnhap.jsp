<%-- 
    Document   : dangnhap.jsp
    Created on : Sep 26, 2017, 2:08:08 PM
    Author     : Phuong Nguyen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
  
    //  out.print(username + ";"+password);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/tracnghiem", "root", "123456");
    Statement stm = con.createStatement();
    String sql = "select  * from user where username = '"+username+ "' and password='" +password+ "'";
    ResultSet rs = stm.executeQuery(sql);
    if (rs.next() == true) {
        out.print(rs.getInt("role"));
    } else {
        out.print(-1);
    }

%>  
