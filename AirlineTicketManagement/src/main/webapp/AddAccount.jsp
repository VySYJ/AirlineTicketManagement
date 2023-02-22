<%-- 
    Document   : AddAc
    Created on : Feb 15, 2023, 8:27:44 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>THÊM TÀI KHOẢN</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>

<body>
    

    <div id="wrapper">
        <div class="container">
            <div class="row justify-content-around">
                <form action="Account/*" class="col-md-6 p-3" method="post" name="" id="MyForm">
                    <h1 class="text-center h3">THÊM TÀI KHOẢN</h1>
                    <div class="form-group ">
                        <label for="textAcRoleID">RoleID</label>
                        <input type="text" name="textAcRoleID" id="textAcRoleID" value="1" class="form-control">

                    </div>

                    <div class="form-group ">
                        <label for="textAcID">ID</label>
                        <input type="text" name="textAcID" id="textAcID" class="form-control">

                    </div>
                    <div class="form-group">
                        <label for="textUS">Tên Đăng Nhập</label>
                        <input type="text" name="textUS" id="textUS" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="textP">Mật Khẩu</label>
                        <input type="text" name="textP" id="textP" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="textE">Email</label>
                        <input type="text" name="textE" id="textE" class="form-control">
                    </div>
                    <div class="form-group">
                        <input text-center type="submit" value="Xác nhận" class="btn-primary btn">
                    </div>

                </form>
            </div>

        </div>


    </div>
    <script src="./addAC.js"></script>
</body>

</html>