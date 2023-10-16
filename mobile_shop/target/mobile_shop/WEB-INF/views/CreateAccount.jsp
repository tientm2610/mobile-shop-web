<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <style>
            body {
                background: darkgrey;
                background: linear-gradient(to right, darkgray, darkgrey);
            }

            .card-img-left {
                width: 45%;
                /* Link to your background image using in the property below! */
                background: scroll center url('https://i.pinimg.com/564x/f4/a2/3f/f4a23f8d9e38c4a3ec01c16758b50e4c.jpg');
                background-size: cover;
            }

            .btn-login {
                font-size: 0.9rem;
                letter-spacing: 0.05rem;
                padding: 0.75rem 1rem;
            }
        </style>


        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" type="text/css" href="./css/style.css"> <!-- Đường dẫn đến file CSS -->
    </head>

    <body>
        <!--top-->
        <jsp:include page="nav/Top.jsp"></jsp:include>
        <!--header-->
        <jsp:include page="nav/Header1.jsp"></jsp:include>
        <!--menu-->
        <jsp:include page="nav/Menu1.jsp"></jsp:include>

        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-9 mx-auto">
                    <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
                        <div class="card-img-left d-none d-md-flex">
                            <!-- Background image for card set in CSS! -->
                        </div>
                        <div class="card-body p-4 p-sm-5">
                            <h3 style="margin-left: 150px;">Đăng Ký</h3>
                            <form>


                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="floatingInputEmail"
                                        placeholder="name@example.com">
                                    <label for="floatingInputEmail">Địa chỉ Email</label>
                                </div>

                                <hr>

                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control" id="floatingPassword"
                                        placeholder="Password">
                                    <label for="floatingPassword">Mật khẩu</label>
                                </div>
                                <hr>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingInputEmail" placeholder="name">
                                    <label for="floatingInputEmail">Họ và tên</label>
                                </div>

                                <hr>

                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingPassword"
                                        placeholder="phonenumber">
                                    <label for="floatingPassword">Số điện thoại</label>
                                </div>
                                <hr>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingInputEmail"
                                        placeholder="address">
                                    <label for="floatingInputEmail">Địa chỉ</label>
                                </div>



                                <div class="d-grid mb-2">
                                    <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase"
                                        type="submit">Đăng Ký</button>
                                </div>
                                <div class="text-center">
                                    Đã có tài khoản? <a class="small" href="login">Đăng nhập</a>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer-->
        <jsp:include page="nav/Footer1.jsp"></jsp:include>
    </body>

    </html>