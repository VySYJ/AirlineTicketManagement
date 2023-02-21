<%-- 
    Document   : BookTicketsFlightDirection
    Created on : Feb 21, 2023, 10:48:06 AM
    Author     : Thiết Béo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Direction</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/BookTicketsFlight.css">
       <style>
            .table-go {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-back {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-responsive{
                margin-bot: 80px;

            }
            .table-striped {
                background-color: #ccc;
            }
            .hd{
                background-color: #ffffff;
            }
            .title1 img {
                width: 30px;
                height: 30px;
             
            }
            .table-wrapper {
                border: solid 1px;
            }
            .title1 h5{
                color: red;
            }
          
            .title1{
                
                display: flex;
                margin-left: 6px;
            }
             .title{
                margin-left: 100px
            }
                
        </style>
    </head>
    <body>
        <div class="title">

            <div >
                <h4>Tìm Kiếm Chuyến Bay: </h4>
            </div>
            <div >      
                <p>Ngày Bay: </p>
            </div>
            <div class="title1">
                <img src="img/flight.png"/>
                <h5>Chuyến Bay Chiều Đi:</h5>
            </div>
        </div>
        <div class="container">
            <div class="table-responsive">

                <div class="table-wrapper">
                    <div class="table-back">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr class="hd">
                                    <th>Chuyến Bay</th>
                                    <th>Hạng Vé</th>
                                    <th>Khởi Hành</th>
                                    <th>Đến Nơi</th>
                                    <th>Giá</th>
                                    <th>#</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>VietNam Airlines</td>
                                    <td>Hạng  P</td>
                                    <td>12:00</td>
                                    <td>2:00</td>
                                    <td>1.000.000 VND</td>
                                    <td>
                                        <a href="#" class="btn btn-danger" title="Click vào đây để đặt vé!">Đặt Vé</i></a>

                                    </td>
                                </tr>
                                <tr>
                                    <td>VietNam Airlines</td>
                                    <td>Hạng  P</td>
                                    <td>12:00</td>
                                    <td>2:00</td>
                                    <td>1.000.000 VND</td>
                                    <td>
                                        <a href="#" class="btn btn-danger" title="Click vào đây để đặt vé!">Đặt Vé</i></a>

                                    </td>
                                </tr>
                                <tr>
                                    <td>VietNam Airlines</td>
                                    <td>Hạng  P</td>
                                    <td>12:00</td>
                                    <td>2:00</td>
                                    <td>1.000.000 VND</td>
                                    <td>
                                        <a href="#" class="btn btn-danger" title="Click vào đây để đặt vé!">Đặt Vé</i></a>

                                    </td>
                                </tr>
                                <tr>
                                    <td>VietNam Airlines</td>
                                    <td>Hạng  P</td>
                                    <td>12:00</td>
                                    <td>2:00</td>
                                    <td>1.000.000 VND</td>
                                    <td>
                                        <a href="#" class="btn btn-danger" title="Click vào đây để đặt vé!">Đặt Vé</i></a>
                                    </td>
                                </tr>		
                                <tr>
                                    <td>VietNam Airlines</td>
                                    <td>Hạng  P</td>
                                    <td>12:00</td>
                                    <td>2:00</td>
                                    <td>1.000.000 VND</td>
                                    <td>
                                        <a href="#" class="btn btn-danger" title="Click vào đây để đặt vé!">Đặt Vé</i></a>

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>


</html>
