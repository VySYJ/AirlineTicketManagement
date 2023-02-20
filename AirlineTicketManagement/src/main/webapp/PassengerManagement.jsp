<%-- 
    Document   : PassengerManagement
    Created on : Feb 15, 2023, 9:28:37 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="/css/passenger.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Quản lí thông tin khách hàng</title>
</head>

<body>
    <div class="sidebar">
        <div class="logo_content">
            <div class="logo">
                <i class="bx bxl-html5"></i>
                <div class="logo_name">Manager</div>
            </div>
            <i class="bx bx-menu" id="btn"></i>
        </div>
        <ul class="nav_list">
            <li>
                <i class="bx bx-search"></i>
                <input type="text" placeholder="Tìm kiếm">
                <span class="tooltip">Search</span>
            </li>
            <li>
                <a href="#">
                    <i class=""></i>
                    <span class="links_name">Quản lí thông tin khách hàng</span>
                </a>
                <span class="tooltip">Quản lí thông tin khách hàng</span>
            </li>
            <li>
                <a href="#">
                    <i class=""></i>
                    <span class="links_name">Quản lí chuyến bay</span>
                </a>
                <span class="tooltip">Quản lí chuyến bay</span>
            </li>
            <li>
                <a href="#">
                    <i class=""></i>
                    <span class="links_name">Quản lí tài khoản</span>
                </a>
                <span class="tooltip">Quản lí tài khoản</span>
            </li>

        </ul>
    </div>
    <div class="table-go">
        <h2>Quản Lí Thông Tin Khách Hàng<h2>
    </div>
    <div class="container">
        <div class="table-responsive">
            <div> <i class="bx bx-search"></i>
                <input type="text" placeholder="Tìm kiếm">
                <span class="tooltip">Search</span>
            </div>
            <table class="table table-striped ">
                <thead>
                    <tr>
                        <th style="width: 20%">Mã khách hàng</th>
                        <th style="width: 20%">Mã vé</th>
                        <th style="width: 20%">Tên</th>
                        <th style="width: 12%">Ngày sinh</th>
                        <th style="width: 12%">Số điện thoại</th>
                        <th style="width: 15%">Địa chỉ</th>
                        <th style="width: 15%">Email</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th style="width: 20%">A123</th>
                        <th style="width: 20%">12B</th>
                        <th style="width: 20%">Lê Thị Thúy Vy</th>
                        <th style="width: 12%">25/03/2002</th>
                        <th style="width: 12%">0123456789</th>
                        <th style="width: 15%">An Giang</th>
                        <th style="width: 15%">Vyltt@gmail.com</th>
                        <td>
                            <a href="#" class="btn btn-danger" title="Click vào đây để đặt xóa!">Xóa</i></a>

                        </td>
                    </tr>
                    <tr>
                        <th style="width: 20%">A113</th>
                        <th style="width: 20%">11B</th>
                        <th style="width: 20%">Vũ Quốc Thắng</th>
                        <th style="width: 12%">01/01/2002</th>
                        <th style="width: 12%">0123456789</th>
                        <th style="width: 15%">Cần Thơ</th>
                        <th style="width: 15%">Thang@gmail.com</th>
                        <td>
                            <a href="#" class="btn btn-danger" type="submit" title="Click !">Xóa</i></a>

                        </td>
                    </tr>
                    <tr>
                        <th style="width: 20%">A103</th>
                        <th style="width: 20%">12C</th>
                        <th style="width: 20%">Trương Trọng Thiết</th>
                        <th style="width: 12%">01/01/2002</th>
                        <th style="width: 12%">0123456789</th>
                        <th style="width: 15%">Cần Thơ</th>
                        <th style="width: 15%">Thiet@gmail.com</th>
                        <td>
                            <a href="#" class="btn btn-danger" title="Click ">Xóa</i></a>

                        </td>
                    </tr>
                    <tr>
                        <th style="width: 20%">A111</th>
                        <th style="width: 20%">11A</th>
                        <th style="width: 20%">Nguyễn Thế Lữ</th>
                        <th style="width: 12%">01/01/2002</th>
                        <th style="width: 12%">0123456789</th>
                        <th style="width: 15%">Cần Thơ</th>
                        <th style="width: 15%">Thelu@gmail.com</th>
                        <td>
                            <a href="#" class="btn btn-danger" title="Click ">Xóa</i></a>

                        </td>
                    </tr>

                </tbody>
            </table>


        </div>
    </div>

    <script>
        let btn = document.querySelector("#btn");
        let sidebar = document.querySelector(".sidebar");
        let searchBtn = document.querySelector(".bx-search");

        btn.onclick = function () {
            sidebar.classList.toggle("active");
        };
        searchBtn.onclick = function () {
            sidebar.classList.toggle("active");
        };
    </script>
</body>
<style>
    .table-go {
        position: absolute;
        width: 500px;
        height: 59px;
        left: 650px;
        top: 146px;

        font-family: 'Work Sans';
        font-style: normal;
        font-weight: 400;
        font-size: 200px;
        line-height: 59px;
    }

    .table {
        box-sizing: border-box;

        position: absolute;
        width: 1000px;
        height: 407px;
        left: 390px;
        top: 230px;

        border: 1px solid #000000;
    }
</style>

</html>
