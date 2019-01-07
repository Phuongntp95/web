<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/qld", "root", "123456");
    Statement stm = con.createStatement();
    String mamon=request.getParameter("mamon");
   String sql = "select * from bangdiemqld where mamon='"+mamon+"'";
   ResultSet rs = stm.executeQuery(sql);
   String kq="";
   while(rs.next()==true)
   kq += "msv:"+ rs.getString("msv") +" diem: " + rs.getFloat("diem") +"<br>" ;
      out.print(kq);
   
%>  
