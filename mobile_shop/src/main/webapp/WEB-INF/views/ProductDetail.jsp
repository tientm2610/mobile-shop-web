<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />



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
            <!-- <c:forEach items="${pList}" var="o"> -->
            <div class="container" style="height: 995px;">

                <!-- Portfolio Item Heading -->
                <h1 class="my-4">${o.productName}

                </h1>

                <!-- Portfolio Item Row -->
                <div class="row">

                    <div class="col-md-8">
                        <img class="img-fluid" src="${o.img}" alt="">
                    </div>

                    <div class="col-md-4">
                        <h3 class="my-3">Mô tả</h3>
                        <p>
                            ${o.description}</p>


                        <h3 class="my-3" style="margin-left: 50px;
                    font-size: xxx-large;
                    font-family: inherit;
                    color: red;">$${o.price}</h3>
                        <ul>
                            <li>Bảo hành 2 năm</li>
                            <li>Tặng phiếu mua hàng 200.000</li>
                            <li>Tặng Sim 4G Mobifone siêu data - Miễn phí 12 tháng</li>
                            <li>Bảo vệ sản phẩm toàn diện với dịch vụ bảo hành mở rộng</li>

                            <br>
                            <form action="GioHang" method="post">
                                <input type="hidden" min="1" value="1" name="soluong" />
                                <input type="hidden" value="setCart" name="command" />
                                <input type="hidden" value="${o.productId}" name="id" />
                                <input type="hidden" value="${o.productName}" name="name" />
                                <input type="hidden" value="${o.img}" name="image" />
                                <input type="hidden" value="${o.price}" name="price" />
                                <div><button type="submit" class="btn btn-lg btn-primary mt-2"
                                        style="background-color: black;">
                                        Thêm Vào Giỏ Hàng</button>
                                </div>
                            </form>


                        </ul>

                    </div>

                </div>
                <!-- /.row -->

                <!-- Related Projects Row -->
                <h3 class="my-4" style="color: cornflowerblue;">Thông báo và ưu đãi</h3>

                <div class="row">

                    <div class="col-md-3 col-sm-6 mb-4">
                        <a href="#">
                            <img class="img-fluid"
                                src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:10/plain/https://dashboard.cellphones.com.vn/storage/ipad-102-th9-001231-11.png"
                                alt="">
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 mb-4">
                        <a href="#">
                            <img class="img-fluid"
                                src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:10/plain/https://dashboard.cellphones.com.vn/storage/m14-right-homepage-th9.png"
                                alt="">
                        </a>
                    </div>
                    <img
                        src="https://cdn2.cellphones.com.vn/insecure/rs:fill:1200:75/q:80/plain/https://dashboard.cellphones.com.vn/storage/banner-special-desk-b2s-new.png">

                    <!-- <div class="col-md-3 col-sm-6 mb-4">
                        <a href="#">
                            <img class="img-fluid"
                                src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:10/plain/https://dashboard.cellphones.com.vn/storage/asus%20vivobook%20oled.jpg"
                                alt="">
                        </a>
                    </div> -->

                    <!-- <div class="col-md-3 col-sm-6 mb-4">
                        <a href="#">
                            <img class="img-fluid" src="https://via.placeholder.com/500x300" alt="">
                        </a>
                    </div>  -->

                </div>
                <!-- /.row -->

            </div>

            <!-- </c:forEach> -->

            <!--footer-->

            <jsp:include page="nav/Footer1.jsp"></jsp:include>
        </body>


        </html>