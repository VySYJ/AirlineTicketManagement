<%-- 
    Document   : AccountManagement
    Created on : Feb 21, 2023, 1:48:03 PM
    Author     : Thiet
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.Dao.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <title>Quản lí tài khoản</title>
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap");

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }

            body {
                position: relative;
                min-height: 100vh;
                width: 100%;
            }

            .sidebar {
                position: fixed;
                width: 78px;
                height: 100%;
                top: 0;
                left: 0;
                background: linear-gradient(to top right, #ffc2e9, #e6f1ff);
                padding: 6px 14px;
                transition: all 0.5s ease;
            }

            .sidebar .logo_content .logo {
                display: flex;
                align-items: center;
                height: 50px;
                width: 100%;
                color: #1f1e25;

                opacity: 0;
                pointer-events: none;
            }

            .logo_content .logo i {
                font-size: 28px;
                margin-right: 5px;
            }

            .logo_content .logo .logo_name {
                font-size: 20px;
                font-weight: 400;
            }

            .sidebar #btn {
                position: absolute;
                color: #1f1e25;
                left: 50%;
                top: 6px;
                font-size: 20px;
                height: 50px;
                width: 50px;
                text-align: center;
                line-height: 50px;
                transform: translateX(-50%);
            }

            .sidebar ul {
                margin-top: 20px;
            }
            .dora{
                display:flex;
            }
            .dora.td{
                margin-right: 100px;
            }

            .sidebar ul li {
                position: relative;
                height: 50px;
                width: 100%;
                margin: 0 5px;
                list-style: none;
                line-height: 50px;
            }

            .sidebar ul li a {
                color: #81747f;
                display: flex;
                align-items: center;
                text-decoration: none;
                border-radius: 15px;
                transition: all 0.2s ease-in;
                white-space: nowrap;
            }

            .sidebar ul li i {
                height: 50px;
                min-width: 50px;
                border-radius: 12px;
                line-height: 50px;
                text-align: center;
            }

            .sidebar ul li a:hover {
                color: #000;
                font-weight: 600;
                background: rgba(255, 255, 255, 0.25);
            }

            .sidebar ul li input {
                position: absolute;
                height: 100%;
                width: 100%;
                left: 0;
                border-radius: 12px;
                border: none;
                outline: none;
                background: linear-gradient(to right, #fce0f0, #e8fffebb);
                padding-left: 50px;
                font-size: 18px;
                color: #1f1e25;
            }

            .sidebar ul li .bx-search {
                position: absolute;
                z-index: 99;
                color: #1f1e25;
                font-size: 22px;
                transition: all 0.5s ease-in;
            }

            .home_content {
                position: absolute;
                height: 100%;
                width: calc(100% - 76px);
                left: 76px;
                transition: all 0.5s ease;
            }

            .home_content .text {
                font-size: 35px;
                font-weight: 600;
                color: #1f1e25;
                margin: 12px;
                text-align: center;
                margin-top: 100px;
            }

            .sidebar ul li .tooltip {
                position: absolute;
                left: 122px;
                top: 0;
                transform: translate(-50%, -50%);
                border-radius: 6px;
                height: 35px;
                width: 122px;
                background: rgba(255, 255, 255, 0.4);
                line-height: 35px;
                text-align: center;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
                transition: 0s;
                opacity: 0;
                pointer-events: none;
                display: block;
            }

            .sidebar ul li:hover .tooltip {
                transition: all 0.3s ease;
                top: 50%;
                opacity: 1;
            }

            .sidebar.active {
                width: 300px;
            }

            .sidebar.active .logo_content .logo {
                opacity: 1;
                pointer-events: none;
            }

            .sidebar.active #btn {
                left: 90%;
            }

            .sidebar ul li .bx-search:hover {
                background: #fff;
                color: #1f1e25;
            }

            .sidebar.active ul li .tooltip {
                display: none;
            }

            .sidebar .links_name {
                opacity: 0;
                pointer-events: none;
                transition: all 0.5s ease;
            }

            .sidebar.active .links_name {
                opacity: 1;
                pointer-events: auto;
            }

            .sidebar.active .profile .profile_details {
                opacity: 1;
                pointer-events: auto;
            }

            .sidebar.active .profile #log_out {
                left: 88%;
            }

            .sidebar.active~.home_content {
                width: calc(100% - 240px);
                left: 240px;
            }

            .sidebar.active .profile_content .profile {
                background: linear-gradient(to right, #fce0f07a, #e8fffe);
            }

            .sidebar.active .profile #log_out {
                background: none;
            }

            .title {
                padding-left: 30px;
            }
            .table-responsive {
                margin-top: 80px;
                margin-left: 60px;
            }

            .table-go h2 {
                margin-top: 30px;
                text-align: center;
            }
            .btn{
                float: right;
                margin-right: 100px;
                border: 1px solid black;
                border-radius: 10px;
                background-color: rgb(16, 234, 12);
            }

            .search-box{
                position: absolute;
                left: 300px;
                top: 75px;
            }

        </style>
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
            <h2>Quản lí tài khoản<h2>
                    <!--                    <p><button type="button" class="btn btn-success">Thêm tài khoản</button></p>-->

                    <a href = "AddAccount.jsp"  class="btn" >Thêm tài khoản</a>
                    <div class="search-box">
                        <div class="input-group">
                            <input type="text" id="search" class="form-control" placeholder="Tìm Kiếm">
                            
                        </div>
                    </div>
                    </div>
                    <div class="container">
                        <div class="table-responsive">
                            <table class="table ">
                                <thead>
                                    <tr>
                                        <th style="width: 10%;">ID</th>
                                        <th style="width: 20%;">Tên đăng nhập</th>
                                        <th style="width: 30%;">Mật Khẩu</th>
                                        <th style="width: 30%;">Email</th>
                                        <th>RoldID </th>
                                        <th style="width: 5%;"></th>
                                        <th style="width: 5%;"></th>

                                    </tr>
                                </thead>
                                <%
                                    AccountDAO dao = new AccountDAO();
                                    ResultSet rs = dao.getAll();
                                    while (rs.next()) {
                                %>
                                <tbody>
                                    <tr>

                                        <td><%= rs.getInt("AccountID")%></td>
                                        <td><%= rs.getString("Username")%></td>
                                        <td><%= rs.getString("Password")%></td>
                                        <td><%= rs.getString("Email")%></td>
                                        <td><%= rs.getInt("RoleID")%></td>
                                        
                                        <td>
                                            <a href="/Account/Change/<%= rs.getString("Username")%>"<i
                                                    class="material-icons">&#xe869;</i></a>

                                        </td>
                                        <td>
                                            <a href="/Account/Delete/<%= rs.getString("AccountID")%>"title="Delete" data-toggle="tooltip"><i
                                                    class="material-icons">&#xE872;</i></a>

                                        </td>
                                        <%
                                            }
                                        %>


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