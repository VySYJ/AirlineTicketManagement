<%-- 
    Document   : Informationjsp
    Created on : Feb 16, 2023, 9:16:30 AM
    Author     : The Lu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Information</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/stylecss.css" >
        
    </head>
    
    <body>
       <div class="Content"> 
        
        <h1>XÁC NHẬN VÀ THANH TOÁN</h1>

        <h3 style="margin-left: 350px;">Thông tin về:</h3>
          <div>
            <p class="text">Chuyến đi</p>
            <table>
                   <tr>
                    <td colspan="2">Từ: TP Hồ Chí Minh</td>
                    <td colspan="1">Đến: Hà Nội</td>
                    <td colspan="2">Hạng: VietnameAirline</td>
                   </tr> 
                
                    <tr>
                        <td colspan="2">12:00, 25/03/2023</td>
                        <td colspan="1">2:00,25/03/2023</td>
                        <td colspan="2">Hạng vé:P</td>
                    </tr>
                  
                    <tr>
                        <td colspan="2">Sân bay: TanSonNhat</td>
                        <td colspan="1">Sân bay: NoiBai</td>
                        <td colspan="2">Chuyến bay:VN204</td>
                    </tr>
                    <tr>
                        <th>Hành Khách</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Thuế & Phí</th>
                        <th> Tổng Cộng</th>
                
                    </tr> <br>
                    
                    <tr>
                        <td>Người lớn</td>
                        <td>1</td>
                        <td>599.000</td>
                        <td>750.000</td>
                        <td>1.349.000 VND</td>
                    </tr>
                    
                    <tr>
                        <td>Trẻ em</td>
                        <td>1</td>
                        <td>539.000</td>
                        <td>750.000</td>
                        <td>1.289.000 VND</td>
                    </tr>
                
            </table>
           <h2 style="color:red;margin: 10px 20px 0 350px">Tổng Cộng: 2.638.000 VND</h2>
            <p class="text">Chuyến về</p>

            <table class="style">
                <table>
                   <tr>
                    <td colspan="2">Từ: Hà Nội</td>
                    <td colspan="1">Đến: TP Hồ Chí Minh</td>
                    <td colspan="2">Hạng: VietnameAirline</td>
                   </tr> 
                
                    <tr>
                        <td colspan="2">12:00, 29/03/2023</td>
                        <td colspan="1">2:00, 29/03/2023</td>
                        <td colspan="2">Hạng vé:P</td>
                    </tr>
                  
                    <tr>
                        <td colspan="2">Sân bay: TanSonNhat</td>
                        <td colspan="1">Sân bay: NoiBai</td>
                        <td colspan="2">Chuyến bay:VN204</td>
                    </tr>
                    <tr>
                        <th>Hành Khách</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Thuế & Phí</th>
                        <th> Tổng Cộng</th>
                    </tr>
                
                    <tr>
                        <td>Người lớn</td>
                        <td>1</td>
                        <td>599.000</td>
                        <td>750.000</td>
                        <td>1.349.000 VND</td>
                    </tr>
                    
                    <tr>
                        <td>Trẻ em</td>
                        <td>1</td>
                        <td>539.000</td>
                        <td>750.000</td>
                        <td>1.289.000 VND</td>
                    </tr>
                </tbody>
            </table>
           <h2  style="color:red;margin: 10px 20px 0 350px">Tổng Cộng: 2.638.000 VND</h2>
         </div>

           <h4 style="margin-left: 250px;">Xác nhận thông tin khách hàng:</h3>
       </div>
         
            <div class="authen-form">
                <div class="authen-form_Container">
                    <div class="authen-form_header">
                        <h2 class="authen-form_heading">Thông tin liên hệ</h2>
                    </div>
    
                    <div class="authen-form_form">
                        <div class="authen-form_group">
                            <lable class="authen-form_lable">Họ và tên</lable> 
                            <input type="text" class="authen-form_input" id="fullname" name="fullname" required>
                        </div>
    
                        <div class="authen-form_group">
                            <lable class="authen-form_lable">Ngày sinh</lable> <br>
                            <input type="date" class="authen-form_input" id="birthday" name="birthday" required>
                        </div>
    
                        <div class="authen-form_group">
                            <lable class="authen-form_lable">Địa Chỉ </lable> <br>
                            <input type="text" class="authen-form_input" id="address" name="address" required>
                        </div>
             
                        <div class="authen-form_group">
                            <lable class="authen-form_lable">Số điện thoại</lable> <br>
                            <input type="phone" class="authen-form_input" id="phone" name="phone" required>
                        </div>
    
                        <div class="authen-form_group">
                            <lable class="authen-form_lable">Email</lable> <br>
                            <input type="text" class="authen-form_input" id="email" name="email" required>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="authen-form_control">
                <button class="btn">Xác nhận</button> 
            </div>
    </body>
</html>