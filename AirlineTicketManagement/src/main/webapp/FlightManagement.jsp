<%-- 
    Document   : FlightManagement
    Created on : Feb 16, 2023, 9:19:26 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <title>Quản lí chuyến bay</title>
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
                <input type="text" placeholder="Tìm kiếm">
                <span class="tooltip">Search</span>
            </li>
            <li>
                <a href="#">
                    <i class=""></i>
                    <span class="links_name">Quản lí thông tin khách hàng</span>
                </a>
                <span class="tooltip">Quản lí thông tin khách hàng</span>
            </li>
            <li>
                <a href="#">
                    <i class=""></i>
                    <span class="links_name">Quản lí chuyến bay</span>
                </a>
                <span class="tooltip">Quản lí chuyến bay</span>
            </li>
            <li>
                <a href="#">
                    <i class=""></i>
                    <span class="links_name">Quản lí tài khoản</span>
                </a>
                <span class="tooltip">Quản lí tài khoản</span>
            </li>

        </ul>
    </div>
    <div class="table-go">
        <h2>Quản lí thông tin chuyến bay<h2>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-7">
                <form class="form-inline">
                    <input class="col-sm-5 form-control mr-sm-2" type="search" placeholder="Tìm kiếm"
                        aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm Kiếm</button>
                </form>
            </div>
            <div class="col-sm-5">
                <div class="td">
                    <p class="text-right"><button type="button" class="btn btn-success">Thêm Chuyến Bay</button></p>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th style="width: 3%;">MCB</th>
                        <th style="width: 3%;">MMB</th>
                        <th style="width: 12%;">Từ</th>
                        <th style="width: 12%;">Đến</th>
                        <th style="width: 10%;">Giờ đến</th>
                        <th style="width: 10%;">Giờ đi</th>
                        <th style="width: 8%;">Ngày đi</th>
                        <th style="width: 8%;">Ngày đến</th>
                        <th style="width: 15%;">Sân bay đi</th>
                        <th style="width: 16%;">Sân bay đến</th>
                        <th style="width: 3%;"></th>
                        <th style="width: 2%;"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>F01</td>
                        <td>VN204</td>
                        <td>TP Hồ Chí Minh</td>
                        <td>Hà Nội</td>
                        <td>8:00</td>
                        <td>2:00</td>
                        <td>01/02/2023</td>
                        <td>01/02/2023</td>
                        <td>Tân Sơn Nhất</td>
                        <td>Nội Bài</td>
                        <td>
                            <a href="#" class="edit" title="Change Permission" data-toggle="tooltip"><i class="material-icons">&#xe869;</i></a>

                        </td>
                        <td>
                            <a href="#" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>

                    </tr>
                    <tr>
                        <td>F02</td>
                        <td>VN205</td>
                        <td>TP Cần Thơ</td>
                        <td>Hà Nội</td>
                        <td>9:00</td>
                        <td>3:00</td>
                        <td>11/02/2023</td>
                        <td>11/02/2023</td>
                        <td>Trà Nóc</td>
                        <td>Nội Bài</td>
                        <td>
                            <a href="#" class="edit" title="Change Permission" data-toggle="tooltip"><i class="material-icons">&#xe869;</i></a>

                        </td>
                        <td>
                            <a href="#" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>F03</td>
                        <td>VN206</td>
                        <td>TP Đà Nẵng</td>
                        <td>Nha Trang</td>
                        <td>7:00</td>
                        <td>12:00</td>
                        <td>10/02/2023</td>
                        <td>10/02/2023</td>
                        <td>Tân Sơn Nhất</td>
                        <td>Cát Lái</td>
                        <td>
                            <a href="#" class="edit" title="Change Permission" data-toggle="tooltip"><i class="material-icons">&#xe869;</i></a>

                        </td>
                        <td>
                            <a href="#" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>F04</td>
                        <td>VN204</td>
                        <td>TP Hồ Chí Minh</td>
                        <td>Trung Quốc</td>
                        <td>8:00</td>
                        <td>2:00</td>
                        <td>03/02/2023</td>
                        <td>04/02/2023</td>
                        <td>Tân Sơn Nhất</td>
                        <td>Bắc Kinh</td>
                        <td>
                            <a href="#" class="edit" title="Change Permission" data-toggle="tooltip"><i class="material-icons">&#xe869;</i></a>
    
                        </td>
                        <td>
                            <a href="#" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
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
        }
        searchBtn.onclick = function () {
            sidebar.classList.toggle("active");
        }
    </script>
</body>

</html>