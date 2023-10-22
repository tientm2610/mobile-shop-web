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

                        <form action="addProduct" method="post" style="max-width: 600px;margin-left: 220px;">
                            <div class="card-body p-4 p-sm-5">
                                <h3 style="margin-left: 150px; margin-bottom: 30px;">Thêm sản phẩm mới</h3>



                                <div class="form-floating mb-3">
                                    <input name="product_id" type="text" class="form-control">
                                    <label for="floatingInputEmail">ID sản phẩm</label>
                                </div>

                                <hr>
                                <div class="form-floating mb-3">
                                    <input name="product_name" type="text" class="form-control">
                                    <label for="floatingInputEmail">Tên Sản phẩm</label>
                                </div>

                                <hr>
                                <label style="margin-bottom: 30px;">Hãng sản phẩm</label>
                                <div class="form-floating mb-3">

                                    <select name="category_id">
                                        <c:forEach items="${cList}" var="o">
                                            <!-- Hiển thị name cho ng dùng chọn, nhưng lấy dữ liệu cho db thì lấy id -->
                                            <option value="${o.category_id}">${o.category_name}</option>
                                        </c:forEach>

                                    </select>
                                </div>
                                <hr>
                                <div class="form-floating mb-3">
                                    <input name="img" type="text" class="form-control">
                                    <label for="floatingInputEmail">Hình ảnh</label>
                                </div>

                                <hr>

                                <div class="form-floating mb-3">
                                    <input name="price" type="text" class="form-control">
                                    <label for="floatingInputEmail">Giá sản phẩm</label>
                                </div>
                                <hr>
                                <label for="floatingInputEmail">Mô tả sản phẩm</label>
                                <div class="form-floating mb-3">
                                    <textarea name="description" style="width: 500px;height: 250px; ">
                                        </textarea>
                                </div>

                                <div>
                                    <button type="button">Trở về</button>
                                    <button type="submit">Thêm sản phẩm</button>

                                </div>
                            </div>


                        </form>


                    </body>
                </div>
            </div>
            <!--footer-->

        </body>
        <jsp:include page="nav/Footer1.jsp"></jsp:include>

        </html>