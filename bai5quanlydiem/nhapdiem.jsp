
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    
    String msv = request.getParameter("msv");
    String diem = request.getParameter("diem");
    String mamon = request.getParameter("mamon");  
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/qld", "root", "123456");
    Statement stm = con.createStatement();
    String kq;
    try {
        String sql ="";// "insert into bangdiemqld values ('" + msv + mamon +"'"+ diem + ") ";
        stm.executeUpdate(sql);
        kq = "Nhập điểm sinh viên " + msv + " thành công!";
    } catch (SQLException e) {
       kq = "Sinh viên " + msv + " có điểm rồi!";
    }
    out.print(kq);
%>  
