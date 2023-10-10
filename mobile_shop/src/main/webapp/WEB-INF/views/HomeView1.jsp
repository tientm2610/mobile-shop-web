<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mobile Shop</title>
        <link rel="stylesheet" href="style.css">
        <style>
            /* CSS */
            body,
            h1,
            h2,
            p {
                margin: 0;
                padding: 0;
            }

            header {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 20px;
            }

            nav ul {
                list-style-type: none;
            }

            nav li {
                display: inline;
                margin-right: 20px;
            }

            nav a {
                color: white;
                text-decoration: none;
            }

            .product-list {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
            }

            .product {
                margin: 20px;
                padding: 10px;
                border: 1px solid #ddd;
                text-align: center;
            }

            .product img {
                max-width: 100%;
                height: auto;
            }

            .cart {
                background-color: #f5f5f5;
                padding: 20px;
                text-align: center;
            }

            button {
                background-color: #333;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
            }

            button:hover {
                background-color: #555;

                body {
                    font-family: Arial, sans-serif;
                    margin: 0;
                    padding: 0;
                    background-color: #f2f2f2;
                }

                header {
                    background-color: #333;
                    color: white;
                    text-align: center;
                    padding: 10px 0;
                }

                header h1 {
                    margin: 0;
                }

                nav ul {
                    list-style: none;
                    padding: 0;
                }

                nav ul li {
                    display: inline;
                    margin-right: 20px;
                }

                main {
                    max-width: 800px;
                    margin: 20px auto;
                    background-color: white;
                    padding: 20px;
                    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                }

                .blog-post h2 {
                    font-size: 24px;
                }

                .blog-post .date,
                .blog-post .author {
                    color: #777;
                    font-size: 14px;
                }

                .blog-post img {
                    max-width: 100%;
                    height: auto;
                    margin-top: 20px;
                }

                .tags {
                    margin-top: 10px;
                }

                .tag {
                    background-color: #007bff;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 3px;
                    margin-right: 10px;
                    display: inline-block;
                }

                .share-buttons {
                    margin-top: 20px;
                }

                .share-buttons a {
                    display: inline-block;
                    background-color: #007bff;
                    color: white;
                    padding: 5px 10px;
                    border-radius: 3px;
                    margin-right: 10px;
                    text-decoration: none;
                }

                .blog-carousel {
                    max-width: 600px;
                    margin: 0 auto;
                    padding: 20px;
                }

                .carousel-inner img {
                    width: 100%;
                    height: auto;
                }
            }

            .centered-content {
                text-align: center;
                margin: 100px auto;
                max-width: 800px;
                padding: 20px;
            }

            .centered-content {
                text-align: center;
                margin: 100px auto;
                max-width: 800px;
                padding: 20px;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .login-button,
            .register-button {
                margin-left: 10px;
                padding: 5px 10px;
                background-color: #a9a9a9;
                color: white;
                border-radius: 3px;
                text-decoration: none;
            }

            .login-button:hover,
            .register-button:hover {
                background-color: #0056b3;
            }

            .image-container {
                position: relative;
            }

            /* CSS */
            .modal {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.7);
            }

            .modal-content {
                max-width: 80%;
                max-height: 80%;
                margin: auto;
                display: block;
            }

            .close {
                position: absolute;
                top: 20px;
                right: 20px;
                font-size: 30px;
                color: white;
                cursor: pointer;
            }

            /* CSS */
            footer {
                background-color: #333;
                color: #fff;
                text-align: center;
                padding: 20px 0;
            }

            .footer-content {
                max-width: 1200px;
                margin: 0 auto;
            }

            .footer-content p {
                font-size: 14px;
                margin: 5px 0;
            }

            /* CSS */
            .footer {
                background-color: #333;
                color: #fff;
                padding: 30px 0;
                text-align: center;
            }

            .footer h4 {
                color: #fff;
            }

            .footer-left,
            .footer-center,
            .footer-right {
                width: 30%;
                display: inline-block;
                vertical-align: top;
                text-align: left;
                padding: 0 20px;
                box-sizing: border-box;
            }

            .footer ul {
                list-style: none;
                padding: 0;
            }

            .footer ul li {
                margin-bottom: 10px;
            }

            .footer a {
                color: #fff;
                text-decoration: none;
            }

            .footer a:hover {
                text-decoration: underline;
            }

            /* CSS */
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
                display: block;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .login-container {
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                padding: 20px;
                border-radius: 5px;
                text-align: center;
            }

            h1 {
                color: #333;
                margin-bottom: 20px;
            }

            .form-group {
                margin-bottom: 10px;
                text-align: left;
            }

            label {
                display: block;
                font-weight: bold;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button {
                background-color: #007bff;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>

    <body>
        <!--header-->
        <jsp:include page="Header1.jsp"></jsp:include>
        <!--menu-->
        <jsp:include page="Menu1.jsp"></jsp:include>
        <!-- <content> -->

        <section class="blog">
            <article class="blog-post">
                <!-- ... (nội dung bài viết) -->
                <a href="javascript:void(0);" onclick="openModal('large-image.jpg')">
                    <img src="https://cdn.tgdd.vn/2023/09/banner/IP15-1200-300-1200x300-1.png" alt="Hình ảnh"
                        height="100%">
                </a>
                <!-- ... (nội dung bài viết) -->
            </article>
        </section>

        <!-- Modal -->
        <div id="imageModal" class="modal">
            <span class="close" onclick="closeModal()">&times;</span>
            <img class="modal-content" id="modalImage">
        </div>


        <!-- Các sản phẩm và giỏ hàng -->
        <section class="product-list">
            <!-- Các sản phẩm ở đây -->
        </section>

        <section class="cart">
            <!-- Giỏ hàng ở đây -->
        </section>

        <script src="script.js"></script>


        <section class="order-management">
            <h2>Quản lý Đơn hàng</h2>
            <ul>
                <li><a href="order1.html">Đơn hàng 1</a></li>
                <li><a href="order2.html">Đơn hàng 2</a></li>
                <!-- Thêm các đơn hàng khác ở đây -->
            </ul>
        </section>


        <section class="product-list">
            <article class="product">
                <img src="https://cdn.sforum.vn/sforum/wp-content/uploads/2023/09/apple-iphone-15-pro-11.jpg"
                    alt="iPhone" width="300" height="200">
                <h2>iPhone 15 Pro Max</h2>
                <p>Giá: $999</p>
                <button onclick="addToCart('iPhone 15 ProMax', 999)">Mua ngay</button>
            </article>

            <article class="product">
                <img src="https://cdn.sforum.vn/sforum/wp-content/uploads/2023/09/apple-iphone-15-pro-11.jpg"
                    alt="iPhone" width="300" height="200">
                <h2>iPhone 15 Pro</h2>
                <p>Giá: $900</p>
                <button onclick="addToCart('iPhone 15 Pro', 900)">Mua ngay</button>
            </article>

            <article class="product">
                <img src="https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-tim-thumb-600x600.jpg"
                    alt="iPhone" width="300" height="200">
                <h2>iPhone 14 Pro Max</h2>
                <p>Giá: $850</p>
                <button onclick="addToCart('iPhone 14 ProMax', 850)">Mua ngay</button>
            </article>

            <article class="product">
                <img src="https://cdn.tgdd.vn/Files/2020/12/07/1312105/samsung-s21-plus_800x588.jpg" alt="Samsung"
                    width="300" height="200">
                <h2>Samsung Galaxy S21</h2>
                <p>Giá: $899</p>
                <button onclick="addToCart('Samsung Galaxy S21', 899)">Mua ngay</button>
            </article>
        </section>

        <section class="cart">
            <h2>Giỏ hàng</h2>
            <ul id="cart-list"></ul>
            <p id="total-price">Tổng: $0.00</p>
        </section>

        <script src="script.js"></script>

        <!--footer-->
        <jsp:include page="Footer1.jsp"></jsp:include>

    </body>

    </html>