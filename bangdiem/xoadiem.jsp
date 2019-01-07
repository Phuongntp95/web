
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    
    String masv = request.getParameter("masv");
    String diemthi = request.getParameter("diemthi");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/qld", "admin", "admin");
    Statement stm = con.createStatement();
    String ketqua="thành công";
    String sql = "delete bangdiem set diem ="+ diemthi +"where masv =" + masv+"'";
    try {
        
        int n = stm.executeUpdate(sql);
        if(n==0)            
        ketqua = "mã không có";
        else
            ketqua ="thành công";
    } catch (SQLException e) {
        ketqua = "sữa gặp lỗi";
    }
    out.print(ketqua);
%>