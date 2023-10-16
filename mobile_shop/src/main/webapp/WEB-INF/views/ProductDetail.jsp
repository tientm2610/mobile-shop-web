<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
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

        <div class="container" style="height: 800px;">

            <!-- Portfolio Item Heading -->
            <h1 class="my-4">IPhone 13 128GB

            </h1>

            <!-- Portfolio Item Row -->
            <div class="row">

                <div class="col-md-8">
                    <img class="img-fluid"
                        src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-14-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1693516153040"
                        alt="">
                </div>

                <div class="col-md-4">
                    <h3 class="my-3">Mô tả</h3>
                    <p>
                        Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao<br>
                        Không gian hiển thị sống động - Màn hình 6.1" Super Retina XDR độ sáng cao, sắc nét<br>
                        Trải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học<br>
                        Tối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút</p>


                    <h3 class="my-3" style="margin-left: 50px;
                    font-size: xxx-large;
                    font-family: inherit;
                    color: red;">15.000.000đ</h3>
                    <ul>
                        <li>Bảo hành 2 năm</li>
                        <li>Tặng phiếu mua hàng 200.000</li>
                        <li>Tặng Sim 4G Mobifone siêu data - Miễn phí 12 tháng</li>
                        <li>Bảo vệ sản phẩm toàn diện với dịch vụ bảo hành mở rộng</li>

                        <br>
                        <button type="button" class="btn btn-lg btn-primary mt-2" style="background-color: black;">
                            Thêm Vào Giỏ Hàng</button>

                    </ul>

                </div>

            </div>
            <!-- /.row -->

            <!-- Related Projects Row -->
            <!-- <h3 class="my-4">Related Projects</h3>

            <div class="row">

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="https://via.placeholder.com/500x300" alt="">
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="https://via.placeholder.com/500x300" alt="">
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="https://via.placeholder.com/500x300" alt="">
                    </a>
                </div>

                <div class="col-md-3 col-sm-6 mb-4">
                    <a href="#">
                        <img class="img-fluid" src="https://via.placeholder.com/500x300" alt="">
                    </a>
                </div>

            </div> -->
            <!-- /.row -->

        </div>
        <!--footer-->
        <jsp:include page="nav/Footer1.jsp"></jsp:include>
    </body>


    </html>