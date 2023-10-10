<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

    <!DOCTYPE html>
    <html>

    <head>
        <title>Trang web bán điện thoại</title>
        <link rel="stylesheet" type="text/css" href="style.css"> <!-- Đường dẫn đến file CSS -->
        <style>
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



            div {
                display: block;
            }

            .brand-list {
                list-style: none;
                /* Loại bỏ dấu chấm đầu dòng */
                margin: 0;
                /* Xóa khoảng cách ở đầu danh sách */
                padding: 0;
                /* Xóa khoảng cách ở đầu dòng */
            }

            .brand-list li {
                display: inline;
                /* Hiển thị theo hàng ngang */
                margin-right: 20px;
                /* Khoảng cách giữa các mục */
                font-family: 'Calibri', sans-serif;
                font-size: 30px;
            }

            .contact-info p {
                margin: 0;
                /* Xóa khoảng cách đệm */
                padding: 0;
                /* Xóa khoảng cách đệm */
                margin-right: 10px;
                /* Khoảng cách từ phía bên phải */
                font-family: 'Calibri', sans-serif;
                font-size: 20px;
                /* Kích thước chữ tên shop */
            }
        </style>
    </head>

    <body>
        <header>
            <ul class="brand-list">
                <li></li>
                <li>IPHONE</li>
                <li>SAMSUNG</li>
                <li>XIAOMI</li>
                <li>OPPO</li>
            </ul>
            <div class="contact-info">
                <p>| Tư vấn mua hàng : 1800 2610 | CSKH : 1800 2003 </p>

            </div>
        </header>

        <!-- Phần còn lại của trang web -->

    </body>

    </html>