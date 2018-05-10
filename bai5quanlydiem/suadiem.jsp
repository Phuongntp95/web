
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    
    String msv = request.getParameter("msv");
    String diem = request.getParameter("diem");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/qld", "root", "123456");
    Statement stm = con.createStatement();
    String kq;
    String sql = "update bangdiemqld set diem ="+ diem +"where msv =" + msv+"'";
    try {        
        int n = stm.executeUpdate(sql);
        if(n==0)            
        kq = "mã không có";
        else
            kq ="thành công";
    } catch (SQLException e) {
        kq = "sửa gặp lỗi";
    }
    out.print(kq);
%>