<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
    <footer class="footer">
        <div class="footer-left">
            <!-- Chính Sách -->
            <h4>Chính Sách</h4>
            <ul>
                <li><a href="/chinh-sach-bao-hanh">Chính Sách Bảo Hành</a></li>
                <li><a href="/chinh-sach-doi-tra">Chính Sách Đổi Trả</a></li>
                <li><a href="/chinh-sach-bao-mat">Chính Sách Bảo Mật</a></li>
            </ul>
        </div>
        <div class="footer-center">
            <!-- Liên Hệ -->
            <h4>Liên Hệ</h4>
            <ul>
                <li>Địa chỉ: 123 Đường ABC, Thành phố HCM</li>
                <li>Điện thoại: 1800-123-456</li>
                <li>Email: mobileshop@example.com</li>
            </ul>
        </div>
        <div class="footer-right">
            <!-- Liên Kết Hữu Ích -->
            <h4>Liên Kết Hữu Ích</h4>
            <ul>
                <li><a href="/gioi-thieu">Giới Thiệu</a></li>
                <li><a href="/lien-he">Liên Hệ</a></li>
                <li><a href="/lich-su-mua-hang">Lịch Sử Mua Hàng</a></li>
            </ul>
        </div>

        <section class="centered-content">
            <h2>Chính sách và Điều khoản</h2>
            <p>Đọc và hiểu rõ <a href="terms.html">Chính sách và Điều khoản</a> của chúng tôi trước khi mua hàng.
            </p>
        </section>



    </footer>