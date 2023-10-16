<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
            <img class="anh2"
                src="https://img.freepik.com/free-vector/flat-design-mobile-store-logo-template_23-2149726002.jpg">
            <img class="anh1"
                src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:80/plain/https://dashboard.cellphones.com.vn/storage/sliding-iphone15-moban-full--ver2.png">

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
                            <h2>Quản lý đơn hàng</h2>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered m-0">
                                    <thead>
                                        <tr>
                                            <!-- Set columns width -->
                                            <th class="text-center py-3 px-4" style="width: 50px;">Mã đơn hàng</th>
                                            <th class="text-right py-3 px-4" style="width: 150px;">Ngày mua</th>
                                            <th class="text-center py-3 px-4" style="width: 300px;">Sản phẩm</th>
                                            <th class="text-right py-3 px-4" style="width: 150px;">Tổng tiền</th>
                                            <th class="text-right py-3 px-4" style="width: 150px;">Trạng thái</th>

                                        </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td class="p-4">
                                                <div class="media align-items-center">
                                                    <h6>1</h6>
                                                </div>
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Ngày mua</td>
                                            <td class="align-middle p-4"><input type="text"
                                                    class="form-control text-center" value="">Sản phẩm</td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Tổng tiền</td>
                                            <td class="text-center align-middle px-0" style="color: green;">Trạng thái
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="p-4">
                                                <div class="media align-items-center">
                                                    <h6>2</h6>
                                                </div>
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Ngày mua</td>
                                            <td class="align-middle p-4"><input type="text"
                                                    class="form-control text-center" value="">Sản phẩm</td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Tổng tiền</td>
                                            <td class="text-center align-middle px-0" style="color: green;">Trạng thái
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-4">
                                                <div class="media align-items-center">
                                                    <h6>3</h6>
                                                </div>
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Ngày mua</td>
                                            <td class="align-middle p-4"><input type="text"
                                                    class="form-control text-center" value="">Sản phẩm</td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Tổng tiền</td>
                                            <td class="text-center align-middle px-0" style="color: green;">Trạng thái
                                            </td>
                                        </tr>

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