<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <title>Shop Homepage - Start Bootstrap Template</title>


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

        <div class="container-fluid ps-md-0">
            <div class="row g-0">
                <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
                <div class="col-md-8 col-lg-6" style="background-color: darkgray;">
                    <div class="login d-flex align-items-center py-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-8 mx-auto">
                                    <h3 class="login-heading mb-4">Đăng Nhập</h3>
                                    <p style="color: greenyellow;">${mess1}</p>
                                    <!-- thong bao khi dang nhap ko thanh cong -->
                                    <p class="text-danger">${mess}</p>
                                    <!-- Sign In Form -->
                                    <form action="login" method="post">
                                        <div class="form-floating mb-3">
                                            <input name="email" type="email" class="form-control" id="floatingInput"
                                                placeholder="name@example.com">
                                            <label for="floatingInput">Địa chỉ Email</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input name="pass" type="password" class="form-control"
                                                id="floatingPassword" placeholder="Password">
                                            <label for="floatingPassword">Mật khẩu</label>
                                        </div>

                                        <div class="form-check mb-3">
                                            <input class="form-check-input" type="checkbox" value=""
                                                id="rememberPasswordCheck">
                                            <label class="form-check-label" for="rememberPasswordCheck">
                                                Nhớ mật khẩu
                                            </label>
                                        </div>

                                        <div class="d-grid">
                                            <button class="btn btn-lg btn-primary btn-login text-uppercase fw-bold mb-2"
                                                type="submit">ĐĂNG NHẬP</button>
                                            <div class="text-center">
                                                Chưa có tài khoản? <a class="small" href="createAccount">Đăng ký</a>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer-->
        <jsp:include page="nav/Footer1.jsp"></jsp:include>
    </body>

    </html>