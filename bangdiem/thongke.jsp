
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
   String sql = "select count(msv) from bangdiem";
       String ketqua="";
    ResultSet rs = stm.executeQuery(sql);
    rs.next();
    int sosv = rs.getInt(1); // lấy dữ liệu ở dạng số nguyên
    sql = "select count(msv) from bangdiem where diem<5";
    rs = stm.executeQuery(sql);
    rs.next();
    int sosvtl = rs.getInt(1);
    ketqua = sosv +","+ sosvtl;
    out.print(ketqua);
%>  
