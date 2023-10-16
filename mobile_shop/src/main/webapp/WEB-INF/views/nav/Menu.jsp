<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <style>
        /* Định dạng CSS inline cho phần menu */
        .menu {
            background-color: #969393;
            /* Màu nền menu */
            color: #ffffff;
            /* Màu chữ menu */
            padding: 10px 0;
            /* Khoảng cách đệm bên trên và bên dưới */
            display: flex;
            /* Hiển thị theo chiều ngang */
            justify-content: space-between;
            /* Canh giữa theo chiều ngang */
            align-items: center;
            /* Căn chỉnh theo chiều dọc */
        }

        .menu-logo {
            color: #5a5858;
            /* Màu chữ menu */
            font-size: 50px;
            /* Kích thước chữ tên shop */
            margin-left: 40px;
            /* Khoảng cách từ phía bên trái */
            font-family: 'Copperplate', sans-serif;
            /* Thay đổi font chữ và sử dụng font chữ thay thế nếu cần */
        }

        .search-bar {
            color: #7e7777;
            /* Màu chữ menu */
            margin-right: 20px;
            /* Khoảng cách từ phía bên phải */
            width: 300px;
            /* Chiều rộng của khung tìm kiếm */
            padding: 5px;
            /* Khoảng cách đệm bên trong khung tìm kiếm */



            float: left;

            text-align: center;
        }

        element.style {
            width: 600px;
            height: 60;
        }

        .login-button {

            margin-right: 10px;
            /* Khoảng cách từ phía bên phải */
            background-color: #423f3f;
            /* Màu nền nút đăng nhập */
            color: #423f3f;
            /* Màu chữ nút đăng nhập */
            padding: 5px 10px;
            /* Khoảng cách đệm bên trên và bên dưới */
            border: none;
            /* Loại bỏ đường viền */
            border-radius: 5px;
            /* Bo tròn góc nút */
            cursor: pointer;
            /* Thay đổi con trỏ khi hover */
        }

        .login-button:hover {
            background-color: #0055a5;
            /* Màu nền khi hover */
        }

        .cart-button {
            background-color: #423f3f;
            /* Màu nền nút giỏ hàng */
            color: #423f3f;
            /* Màu chữ nút giỏ hàng */
            padding: 5px 10px;
            /* Khoảng cách đệm bên trên và bên dưới */
            border: none;
            /* Loại bỏ đường viền */
            border-radius: 5px;
            /* Bo tròn góc nút */
            cursor: pointer;
            /* Thay đổi con trỏ khi hover */
        }

        .cart-button:hover {
            background-color: #423f3f;
            /* Màu nền khi hover */
        }

        .container_swap {

            width: 400px;

        }

        .div_left {

            width: 200px;

            float: left;

            text-align: center;

        }

        .div_right {

            width: 200px;

            float: left;

            text-align: center;

        }
    </style>

    <body>


        <div class="menu">

            <div class="menu-logo">MobileShop</div>
            <div class="search-bar">
                <input class="div_left" type="text" placeholder="Bạn cần tìm gì..." style="width: 600px ; height: 60;">
                &nbsp;

            </div>
            <div class=" = div_right">
                <button>Tìm kiếm</button>
            </div>

            <div class="login-button">
                <button>Đăng nhập</button>
            </div>
            <div class="cart-button">
                <button>Giỏ hàng</button>
            </div>
        </div>