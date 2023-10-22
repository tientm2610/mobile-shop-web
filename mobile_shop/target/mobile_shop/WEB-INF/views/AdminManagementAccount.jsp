<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <style>
                .anh1 {

                    width: 1000px;
                    height: 320px;
                    place-items: center;
                }

                .anh2 {
                    width: 400px;
                    height: 320px;
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
            <!-- <img banner></banner> -->
            <header class="bg-dark py-5" style="display: flex; justify-content: center;">
                <!-- <img class="anh2"
                    src="https://img.freepik.com/free-vector/flat-design-mobile-store-logo-template_23-2149726002.jpg">
                <img class="anh1"
                    src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:80/plain/https://dashboard.cellphones.com.vn/storage/sliding-iphone15-moban-full--ver2.png"> -->

            </header>
            <!-- <format content inside menu> -->
            <div class="d-flex" id="wrapper">
                <!-- Sidebar-->
                <jsp:include page="nav/Sidebar.jsp"></jsp:include>
                <!-- Page content wrapper for sidebar-->
                <div id="page-content-wrapper">



                    <body>

                        <div class="card">
                            <div class="card-header">
                                <h2>Quản lý Tài khoản</h2>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered m-0" style="border-color: white;">
                                        <thead>
                                            <tr>
                                                <!-- Set columns width -->
                                                <th style="width: 20px;">ID</th>
                                                <th style="width: 50px;">Email</th>
                                                <th style="width: 50px;">Họ Tên
                                                </th>
                                                <th style="width: 180px;">Địa chỉ</th>
                                                <th style="width: 120px;">Số điện thoại
                                                </th>
                                                <th style="width: 15px;">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- USER -->
                                            <c:forEach items="${uList}" var="o">
                                                <tr>
                                                    <td class="p-4">
                                                        <div class="media align-items-center">
                                                            <h6>${o.user_id}</h6>
                                                        </div>
                                                    </td>
                                                    <td class="text-center align-middle px-0">${o.email}
                                                    </td>
                                                    <td class="text-right font-weight-semibold align-middle p-4">
                                                        ${o.fullname}
                                                    </td>
                                                    <td class="text-right font-weight-semibold align-middle p-4">
                                                        ${o.address}
                                                    </td>
                                                    <td class="text-center align-middle px-0">${o.phone}

                                                    </td>

                                                    <td>
                                                        <a href=" #"><img style="max-height: 50px;"
                                                                src="https://cdn-icons-png.flaticon.com/128/10336/10336582.png"></a>
                                                        <a href="deleteAccount?uid=${o.user_id}"><img
                                                                style="max-height: 50px;"
                                                                src="https://cdn-icons-png.flaticon.com/128/9790/9790368.png"></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>


                                        </tbody>
                                    </table>
                                </div>




                            </div>
                        </div>


                    </body>
                </div>
            </div>
            <!--footer-->
            <jsp:include page="nav/Footer1.jsp"></jsp:include>
        </body>

        </html>