<%-- 
    Document   : Footer
    Created on : Feb 15, 2023, 10:41:20 AM
    Author     : LeThiThuyVy_CE160174
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Footer</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="css/footer.css">
        <style>
            .footer-clean {
                padding:50px 0;
                background-color: #FFF9DC;
                color:#4b4c4d;
            }

            .footer-clean h3 {
                margin-top:0;
                margin-bottom:12px;
                font-weight:bold;
                font-size:16px;
            }

            .footer-clean ul {
                padding:0;
                list-style:none;
                line-height:1.6;
                font-size:14px;
                margin-bottom:0;
            }

            .footer-clean ul a {
                color:inherit;
                text-decoration:none;
                opacity:0.8;
            }

            .footer-clean ul a:hover {
                opacity:1;
            }

            .footer-clean .item.social {
                text-align:right;
            }

            @media (max-width:767px) {
                .footer-clean .item {
                    text-align:center;
                    padding-bottom:20px;
                }
            }

            @media (max-width: 768px) {
                .footer-clean .item.social {
                    text-align:center;
                }
            }

            .footer-clean .item.social > a {
                font-size:24px;
                width:40px;
                height:40px;
                line-height:40px;
                display:inline-block;
                text-align:center;
                border-radius:50%;
                border:1px solid #ccc;
                margin-left:10px;
                margin-top:22px;
                color:inherit;
                opacity:0.75;
            }

            .footer-clean .item.social > a:hover {
                opacity:0.9;
            }

            @media (max-width:991px) {
                .footer-clean .item.social > a {
                    margin-top:40px;
                }
            }

            @media (max-width:767px) {
                .footer-clean .item.social > a {
                    margin-top:10px;
                }
            }

            .footer-clean .copyright {
                margin-top:14px;
                margin-bottom:0;
                font-size:13px;
                opacity:0.6;
            }
            .copyright{
                font-weight: 110px;
                padding-top: 30px;
                text-align: center;
                font-weight: bold;
            }
            .introduce{
                margin-right: 30px;
            }
            h3{
                font-weight: bold;
                text-align: left;

            }

        </style>
    </head>
    <body>
        <div class="footer-clean">
            <footer>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-sm-4 col-md-3 item">
                            <h3>Gi???i thi???u</h3>
                            <ul>
                                <p class="introduce">H??? th???ng c???a ch??ng t??i ???????c th??nh l???p v?? ph??t tri???n n??m 2023 v???i m???c ti??u ??em ?????n cho ng?????i d??ng nh???ng d???ch v??? ti???n ??ch, v???i giao di???n g???n g??i v?? th??n thi???n.</p>
                            </ul>

                        </div>
                        <div class="col-sm-8 col-md-3 item connect">
                            <h3>Li??n H???</h3>
                            <ul>
                                <li>Phone: 0987090609</li>
                                <li>Email: vylttce160174@gmail.com</li>
                                <li>?????a ch???: C???u Rau R??m, ???????ng Nguy???n V??n C??? n???i d??i, An B??nh, Ninh Ki???u, C???n Th?? 900000</li>
                            </ul>
                        </div>
                        <div class="col-sm-4 col-md-3 item">
                            <h3>D???ch v???</h3>
                            <ul>
                                <li><a href="#">?????t v?? m??y bay</a></li>
                                <li><a href="#">?????t kh??ch s???n</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 item social">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15716.121243810863!2d105.72206247432861!3d10.014354919206934!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0882139720a77%3A0x3916a227d0b95a64!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgQ-G6p24gVGjGoQ!5e0!3m2!1sen!2s!4v1666801942609!5m2!1sen!2s"
                            width="400" height="200" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                        <p class="copyright">Copyright @2023 | Design By VY_SYJ</p>
                    </div>
                </div>
            </footer>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
