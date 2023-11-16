<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <style>
                /* form payment */
                .form-payment {
                    padding: 25px;
                    margin: 25px;
                    box-shadow: 0 2px 5px #3d3939;
                    background-color: white;

                }

                .fas {
                    margin: 25px 10px 0;
                    font-size: 72px;
                    color: #fff;
                }

                .fa-envelope {
                    transform: rotate(-20deg);
                }

                .fa-at,
                .fa-mail-bulk {
                    transform: rotate(10deg);
                }

                input,
                textarea {
                    width: calc(100% - 18px);
                    padding: 8px;
                    margin-bottom: 20px;
                    border: 1px solid #1c87c9;
                    outline: none;
                }

                input::placeholder {
                    color: #666;
                }

                .button-payment {
                    width: 100%;
                    padding: 10px;
                    border: none;
                    background: #1c87c9;
                    font-size: 16px;
                    font-weight: 400;
                    color: #fff;
                }

                button:hover {
                    background: #2371a0;
                }

                /* 
            cart */
                body {
                    margin-top: 20px;
                    background: #eee;
                }

                .ui-w-40 {
                    width: 40px !important;
                    height: auto;
                }

                .card {
                    box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
                }

                .ui-product-color {
                    display: inline-block;
                    overflow: hidden;
                    margin: .144em;
                    width: .875rem;
                    height: .875rem;
                    border-radius: 10rem;
                    -webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
                    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
                    vertical-align: middle;
                }

                /* checked payment */
                .account-type {
                    margin: 15px 0;
                }

                input[type=radio] {
                    display: none;
                }

                label#icon {
                    margin: 0;
                    border-radius: 5px 0 0 5px;
                }

                label.radio {
                    position: relative;
                    display: inline-block;
                    padding-top: 4px;
                    margin-right: 20px;
                    text-indent: 30px;
                    overflow: visible;
                    cursor: pointer;
                }

                label.radio:before {
                    content: "";
                    position: absolute;
                    top: 2px;
                    left: 0;
                    width: 20px;
                    height: 20px;
                    border-radius: 50%;
                    background: #1c87c9;
                }

                label.radio:after {
                    content: "";
                    position: absolute;
                    width: 9px;
                    height: 4px;
                    top: 8px;
                    left: 4px;
                    border: 3px solid #fff;
                    border-top: none;
                    border-right: none;
                    transform: rotate(-45deg);
                    opacity: 0;
                }

                input[type=radio]:checked+label:after {
                    opacity: 1;
                }
            </style>

            <!-- Core theme CSS (includes Bootstrap)-->
            <link rel="stylesheet" type="text/css" href="./css/style.css">
            <!-- <CSS SLIDEBAR></CSS> -->
            <link rel="stylesheet" type="text/css" href="./css/sidebar.css"> <!-- Đường dẫn đến file CSS -->
        </head>

        <body>

            <!--top-->
            <jsp:include page="nav/Top.jsp"></jsp:include>
            <!--header-->
            <jsp:include page="nav/Header1.jsp"></jsp:include>
            <!--menu-->
            <jsp:include page="nav/Menu1.jsp"></jsp:include>

            <!-- <content></content> -->
            <!-- <format content inside menu> -->


            <!-- / Shopping cart table -->



            <!-- form payment -->
            <form action="thanks" class="form-payment" style="    height: 600px;">
                <h1>Thông Tin Địa Chỉ Giao Hàng</h1>
                <div class="info">
                    <input class="fname" type="text" name="name" placeholder="Họ và tên">
                    <input type="text" name="name" placeholder="Địa chỉ Email">
                    <input type="text" name="name" placeholder="Số điện thoại">
                    <input type="text" name="name" placeholder="Địa chỉ nhận hàng">
                </div>
                <p>Ghi chú</p>
                <div>
                    <textarea rows="4"></textarea>
                </div>
                <div class="account-type">
                    <input type="radio" value="none" id="radioOne" name="payment" checked />
                    <label for="radioOne" class="radio">Thanh Toán Bằng Tiền Mặt Khi Nhận Hàng</label>

                </div>
                <button type="submit" href="thanks" class="button-payment" style="background-color: cornflowerblue">
                    <a href="thanks" style="text-decoration: none;color: inherit;">ĐẶT
                        HÀNG</a></button>
            </form>

            </div>
            <!--footer-->
            <jsp:include page="nav/Footer1.jsp"></jsp:include>
        </body>

        </html>