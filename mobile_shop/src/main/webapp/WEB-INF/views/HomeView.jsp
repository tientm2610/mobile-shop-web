<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

    <!DOCTYPE html>

    <html>

    <head>
        <title>
            Home Page
        </title>
        <style>
            /*Content */
            /* CSS cho layout Flexbox */
            .product-container {
                display: flex;
                flex-wrap: wrap;
                /* Cho phép sản phẩm chuyển hàng khi không đủ không gian */
                justify-content: space-between;
                /* Các sản phẩm sẽ tự động căn giữa và cách nhau */
            }

            .product {
                flex: 0 1 calc(20% - 15px);
                /* Định kích thước và khoảng cách giữa các sản phẩm */
                margin-bottom: 20px;
                /* Khoảng cách giữa các sản phẩm dưới cùng một hàng */
                padding: 10px;
                background-color: #ffffff;
                text-align: center;
            }

            /* Định dạng tên sản phẩm */
            .product h2 {
                font-size: 18px;
                /* Kích thước chữ tên sản phẩm */
                color: #333;
                /* Màu chữ tên sản phẩm */
                margin-bottom: 10px;
                /* Khoảng cách dưới cùng */
            }

            /* Định dạng giá sản phẩm */
            .product p {
                font-size: 16px;
                /* Kích thước chữ giá sản phẩm */
                color: #ff6600;
                /* Màu chữ giá sản phẩm (màu cam) */
                font-weight: bold;
                /* In đậm chữ giá sản phẩm */
            }

            .product img {
                width: 250px;
                /* Đặt kích thước mong muốn cho hình ảnh */
                height: auto;
                /* Duy trì tỷ lệ khung hình */
            }

            .product button {
                background-color: #615f5f;
                /* Màu nền menu */
                color: #ffffff;
                /* Màu chữ menu */
            }


            /* Định dạng CSS inline cho phần header */
            header {
                background-color: #423f3f;
                /* Màu nền */
                color: #ecf1ed;
                /* Màu chữ */
                padding: 10px 0;
                /* Khoảng cách đệm bên trên và bên dưới */
                display: flex;
                /* Hiển thị theo chiều ngang */
                justify-content: space-between;
                /* Canh giữa theo chiều ngang */
                align-items: center;
                /* Căn chỉnh theo chiều dọc */
            }
        </style>


    <body>
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <!--header-->
        <jsp:include page="Header.jsp"></jsp:include>
        <!--menu-->
        <jsp:include page="Menu.jsp"></jsp:include>
        <!-- <content> -->
        <section class="product-container">
            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-15-pro-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1692827834790"
                    alt="Sản phẩm 1">
                <h2>Iphone 15 Pro</h2>
                <p>Giá: $500</p>
                <button>Mua ngay</button>
            </div>

            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-15-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1692827832423"
                    alt="Sản phẩm 2">
                <h2>Iphone 15</h2>
                <p>Giá: $600</p>
                <button>Mua ngay</button>
            </div>
            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-14-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1693516153040"
                    alt="Sản phẩm 1">
                <h2>Iphone 14</h2>
                <p>Giá: $500</p>
                <button>Mua ngay</button>
            </div>
            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-15-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1692827832423"
                    alt="Sản phẩm 2">
                <h2>Iphone 15</h2>
                <p>Giá: $600</p>
                <button>Mua ngay</button>
            </div>
            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-14-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1693516153040"
                    alt="Sản phẩm 1">
                <h2>Iphone 14</h2>
                <p>Giá: $500</p>
                <button>Mua ngay</button>
            </div>

            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-se-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1693516152993"
                    alt="Sản phẩm 2">
                <h2>Iphone SE</h2>
                <p>Giá: $600</p>
                <button>Mua ngay</button>
            </div>
            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-15-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1692827832423"
                    alt="Sản phẩm 1">
                <h2>Sản Phẩm 1</h2>
                <p>Giá: $500</p>
                <button>Mua ngay</button>
            </div>

            <div class="product">
                <img src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-15-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1692827832423"
                    alt="Sản phẩm 2">
                <h2>Sản Phẩm 2</h2>
                <p>Giá: $600</p>
                <button>Mua ngay</button>
            </div>

            <!-- Thêm sản phẩm khác tại đây -->
        </section>

        <!--footer-->
        <jsp:include page="Footer1.jsp"></jsp:include>

    </body>

    </html>