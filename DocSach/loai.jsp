<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <!DOCTYPE>
    <head>
        <title>Thư Viện</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style> 
            /* chinh chieu cao, rong, mau nen cho header      */
             #header{ 
                width:100%;
                height: 70px;;
                /* display: block; */
                background-color: #66F559;

            }
            #logo{
                float: left;
                padding: 1px 10px 1px 90px;
            }
            #logomain{
                float: left;
            }
            #dangnhap{
                float: right;
                padding: 10px 30px 10px 30px;    
                display:inline-block;
                text-decoration:none;
            }
            #top_menu nav a{
                display:inline-block;
                padding:10px 10px 10px 10px;
                font-size:20px;
                color:#2904FC;
                text-decoration:none;
            }
            nav a:hover{
                background-color:#706F6F;
            } 
            #menu nav{
                background: #90E6FC ;
                padding-left: 0px;
            }
            #menu nav a{
                display:inline-block;
                padding:10px 10px 10px 10px;
                font-size:15px;
                color:#2904FC;
                text-decoration:none;
            }

            #container {
                padding-left: 0px;
                padding:10px 10px 10px 10px;
                font-size:15px;
                text-decoration:none;
            }
            .trai{
                float: left;
                padding:10px 10px 10px 10px;
            }
            .phai
            {
                float: left;
                padding:10px 150px 10px 10px;
            }
            .giua {
                float: left;
                padding:10px 10px 10px 10px;
            }
            #container{
                width: 900px;
                margin: 0 auto;
            }
        </style> 

    </head>
    <body onload= "kiemtra()">
        <div id="header">
            <div id="logo">
                <img src="D:\nam 4\BT K1\LTM\BaiTap\web\hinhanh\logo.jpg" alt="Chưa load logo" style=" width: 200px; height: 69px">
            </div>
            <div id="logomain">
                <h2>${loaiSach.tenLoai}</h2>

            </div>
        </div>

        <div>
            <div id="menu">
                <nav>
                     <a href="trangchu">Trang chủ</a> 
                    <c:forEach items="${dsLoai}" var="loai">
                        <a href="loai-sach?loai=${loai.id}">${loai.tenLoai}</a> 
                    </c:forEach>
                </nav>

            </div>
            <div id="container">
                <c:if test="${size eq 0}">Hiện tại chưa có sách loại này</c:if>
                    
                 <c:forEach items="${dsSach}" var="s">

                    <div class='trai'>
                        <img src="${s.hinh}" alt="loading..." style="height: 300px; width: 200px;"><br>
                        <a href = "#" >${s.tenSach}</a>
                    </div>
                    <c:set value="${index + 1}" var="index"></c:set>
                </c:forEach>               
                <!--                <div class="trai">
                                    <img src="D:\nam 4\BT K1\LTM\BaiTap\web\DocSach\kynangsong\bon-thoa-uoc.jpg" alt="loading..." style="height: 400px;"><br>
                                    <a href = "#" >Bốn Thỏa Ước</a>
                                </div>
                                <div class="giua">
                                    <img src="D:\nam 4\BT K1\LTM\BaiTap\web\DocSach\kynangsong\bi-an-tuoi-tho.jpg" alt="loading..." style="height: 400px;"><br>
                                    <a href = "#" >Bí Ẩn Tuổi Thơ</a>                     
                                </div>
                
                                <div class="phai">
                                    <img src="D:\nam 4\BT K1\LTM\BaiTap\web\DocSach\kynangsong\vuot-len-nhung-chuyen-nho-trong-cong-viec.jpg" alt="loading..." style="height: 400px;"><br>
                                    <a href = "#" >Vượt Lên Những Chuyện Nhỏ Trong Công Việc</a>
                                </div>
                                <div class="trai">
                                    <img src="D:\nam 4\BT K1\LTM\BaiTap\web\DocSach\maketting\72-thuat-tan-cong-tam-ly-trong-ban-le.jpg" alt="loading..." style="height: 400px;"><br>
                                    <a href = "#" >72 Thuật Tấn Công Tâm Lý</a>
                                </div>
                                <div class="giua">
                                    <img src="D:\nam 4\BT K1\LTM\BaiTap\web\DocSach\maketting\canh-tay-trai-cua-sep.jpg" alt="loading..." style="height: 400px;"><br>
                                    <a href = "#" >Cánh Tay Trái Của Sếp</a>                     
                                </div>-->
            </div>

            <footer>

                <div id="top_footer">
                    <div id="left">

                    </div>
                    <div id="center">
                        <div id="list_footer_item">

                        </div>
                    </div>
                    <div id="right">
                        <div id="list_right_item">
                            <div id="right_item">
                            </div>
                        </div>
                    </div>            
                    <div id="buttom_footer">
                        <div id="buttom_left">
                        </div>
                        <div id="buttom_ringt">
                        </div>
                    </div>
            </footer>
        </div>
    </body>

</html>
