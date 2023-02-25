%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="com.DAO.FlightDAO"%>
<%@page import="com.models.Flight"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cập Nhật thông tin chuyến bay</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <style>
            #my_form{
                border: outset gray;
                margin-top: 20px;
            }
        </style>
    </head>

    <body>


        <div id="wrapper">
            <div class="container">
                <div class="row justify-content-around">
                    <%
                   
                            Flight ft = (Flight) session.getAttribute("flight");
                   %>
                    <form action="FlightControllers" class="col-md-6 p-3" method="post" name="form_1" id="my_form">
                        <h1 class="text-center h3">CẬP NHẬT THÔNG TIN CHUYẾN BAY</h1>
                        <div class="form-group">
                            <label for="textIDFlight">Mã chuyến bay</label>
                            <input type="text" name="textIDFlight" id="" readonly value="<%=ft.FlightScheduleID%>"class="form-control"required>
                        </div>
                        <div class="form-group">
                            <label for="dteG">Ngày đi</label>
                            <input type="date" name="dteG" id="" value="<%=ft.Flight_date%>"class="form-control"required>
                        </div>
                        <div class="form-group">
                            <label for="dteT">Ngày đến</label>
                            <input type="date" name="dteT" id=""value="<%=ft.Arrival_date%>" class="form-control"required>
                        </div>
                        <div class="form-group">
                            <label for="texttimego">Giờ đi</label>
                            <input type="text" name="texttimego" value="<%=ft.Departure_time%>" id=""class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="texttimeto">Giờ đến</label>
                            <input type="text" name="texttimeto" id=""value="<%=ft.Arrive_time%>" class="form-control"required>
                        </div>

                        <div class="form-group">
                            <label for="textFrom">Từ</label>
                            <input type="text" name="textFrom" id=""value="<%=ft.From%>" class="form-control"required>
                        </div>
                        <div class="form-group">
                            <label for="textTo">Đến</label>
                            <input type="text" name="textTo" id=""value="<%=ft.To%>" class="form-control"required >
                        </div>
                        <div class="form-group">
                            <label for="textSbG">Sân bay đi</label>
                            <input type="text" name="textSbG" id="" value="<%=ft.Departure_airport%>"class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="textSbT">Sân bay đến</label>
                            <input type="text" name="textSbT" id=""value="<%=ft.Arrival_airport%>" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="txtIDAirplane">Mã máy bay</label>
                            <input type="text" name="txtIDAirplane" id="" value="<%=ft.AirplaneID%>"class="form-control" required>
                        </div>
                        <input text-center type="submit" value="Xác nhận" name="btnUpdate"class="btn-primary">
                    </form>
                </div>

            </div>


        </div>

    </body>

</html>s