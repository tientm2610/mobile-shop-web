<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <!-- Core theme CSS (includes Bootstrap)-->
            <link rel="stylesheet" type="text/css" href="./css/sidebar.css">
        </head>

        <body>
            <div class="d-flex" id="wrapper">
                <!-- Sidebar-->
                <div class="border-end bg-white" id="sidebar-wrapper">
                    <div class="sidebar-heading border-bottom bg-light" style="font-size: x-large;">≡
                        ${sessionScope.seUser.email}</div>
                    <div class="list-group list-group-flush">
                        <!-- CUSTOMER -->
                        <c:if test="${sessionScope.seUser.role_id == 2}">
                            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="home"
                                style="background-color: darkgray;
                    color: white;"><img src="https://cdn-icons-png.flaticon.com/128/69/69524.png" style=" margin-right: 10px;
                            height: 20px;">Trang chủ</a>
                            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><img
                                    src="https://cdn-icons-png.flaticon.com/128/1077/1077114.png" style=" margin-right: 10px;
                            height: 20px;">Thông tin tài
                                khoản</a>
                            <a class="list-group-item list-group-item-action list-group-item-light p-3"
                                href="orderManagement"><img
                                    src="https://cdn-icons-png.flaticon.com/128/7326/7326971.png" style=" margin-right: 10px;
                        height: 20px;">Đơn
                                hàng</a>
                        </c:if>
                        <!-- ADMIN -->
                        <c:if test="${sessionScope.seUser.role_id == 1}">
                            <a class="list-group-item list-group-item-action list-group-item-light p-3"
                                href="adminAccount"><img src="https://cdn-icons-png.flaticon.com/128/6543/6543645.png"
                                    style=" margin-right: 10px;
                        height: 20px;">Quản lý tài khoản</a>
                            <a class="list-group-item list-group-item-action list-group-item-light p-3"
                                href="adminProduct"><img src="https://cdn-icons-png.flaticon.com/128/9321/9321486.png"
                                    style=" margin-right: 10px;
                        height: 20px;">Quản lý sản phẩm</a>
                            <a class="list-group-item list-group-item-action list-group-item-light p-3"
                                href="adminOrder"><img src="https://cdn-icons-png.flaticon.com/128/4059/4059538.png"
                                    style=" margin-right: 10px;
                        height: 20px;">Quản lý đơn hàng</a>
                        </c:if>
                        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="logout"><img
                                src="https://cdn-icons-png.flaticon.com/128/1828/1828479.png" style=" margin-right: 10px;
                        height: 20px;">Đăng xuất</a>

                    </div>
                </div>
            </div>
        </body>

        </html>