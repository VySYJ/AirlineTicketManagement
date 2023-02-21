<%-- 
    Document   : SignUp
    Created on : Feb 16, 2023, 7:15:39 AM
    Author     : LeThiThuyVy_CE160174
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="css/LoginSignUp.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>


<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>



        
                <div class="card col-12 col-md-8 col-lg-6 col-xl-5 h-60" style="border-radius: 1rem;">
                    <div class="card-body p-5">
                        <div class="mb-md-5 mt-md-4 pb-5">
                            <h2 class="title mb-2 text-uppercase">Đăng Ký</h2>
                            <p class="text-black-50 mb-5">Vui lòng nhập đầy đủ thông tin bên dưới!</p>

                            <form id="form_login" method="post" action="">
                                <div class="formsignup-username mb-4">
                                    <label>Tên đăng nhập</label>
                                    <input type="text" placeholder="Ví dụ: Vy123456" name="username"
                                        class="form-control form-control-lg" required />
                                    <p id="userError"></p>
                                </div>

                                <div class="formsignup-email mb-4">
                                    <label>Email</label>
                                    <input type="text" placeholder="Ví dụ: Vylttce160174@fpt.edu.vn" name="username"
                                        class="form-control form-control-lg" required />
                                    <p id="userError"></p>
                                </div>

                                <div class="formsignup-password mb-4">
                                    <label>Mật khẩu</label>
                                    <input type="password" placeholder="*******" name="password"
                                        class="form-control form-control-lg" required />
                                    <p id="passError"></p>
                                </div>
                                <div class="formsignup-cfpassword mb-4">
                                    <label>Xác nhận mật khẩu</label>
                                    <input type="password" placeholder="*******" name="password"
                                        class="form-control form-control-lg" required />
                                    <p id="passError"></p>
                                </div>

                                <div class="btnSignup">
                                    <button class="btnClick px-5" type="submit" placeholder="123456" name="btnLogin">Đăng nhập</button>
                                </div>

                                <div class="footlogin">
                                    <hr width="100%"/>
                                    <p>Bạn đã có tài khoản?</p>
                                    <a class="signup" href="#">Đăng nhập ngay!</a>    
                                </div>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
    <script src="js/Jquery.js"></script>
</body>

</html>
