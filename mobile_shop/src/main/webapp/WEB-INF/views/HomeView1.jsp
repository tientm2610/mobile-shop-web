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
                <img class="anh2"
                    src="https://img.freepik.com/free-vector/flat-design-mobile-store-logo-template_23-2149726002.jpg">
                <img class="anh1"
                    src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:80/plain/https://dashboard.cellphones.com.vn/storage/sliding-iphone15-moban-full--ver2.png">

            </header>

            <!-- <format content inside menu> -->
            <div class="d-flex" id="wrapper">
                <!-- Sidebar-->
                <!-- Chưa login sẽ không thể sử dụng sidebar -->
                <c:if test="${sessionScope.seUser != null}">
                    <jsp:include page="nav/Sidebar.jsp"></jsp:include>
                </c:if>
                <!-- Page content wrapper for sidebar-->
                <div id="page-content-wrapper">



                    <body>

                        <!-- Section-->
                        <section class="py-5">
                            <div class="container px-4 px-lg-5 mt-5">

                                <div
                                    class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                                    <!-- <đẩy dữ liệu từ database> -->
                                    <c:forEach items="${pList}" var="o">
                                        <div class="col mb-5">
                                            <div class="card h-100">
                                                <!-- Product image-->
                                                <img class="card-img-top" src="${o.img}" />
                                                <!-- Product details-->
                                                <div class="card-body p-4">
                                                    <div class="text-center">
                                                        <!-- Product name-->
                                                        <h5 class="fw-bolder">${o.productName}</h5>
                                                        <!-- Product price-->
                                                        <h6 class="fw-bolder" style="color: darkblue;
                                                font-size: x-large;
                                                margin-top: 20px;">$${o.price}</h6>
                                                    </div>
                                                </div>
                                                <!-- Product actions-->
                                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="productDetail?product_id=${o.productId}">Xem chi
                                                            tiết</a>
                                                    </div><br>
                                                    <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                            href="addToCart?product_id=${o.productId}">Thêm vào giỏ
                                                            hàng</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </section>


                    </body>
                </div>
            </div>
            <!--footer-->
            <jsp:include page="nav/Footer1.jsp"></jsp:include>
        </body>

        </html>