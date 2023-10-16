<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <html>

    <head>
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    </head>
    <style>
        body {
            text-align: center;

            background: #EBF0F5;
        }

        h1 {
            color: #88B04B;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-weight: 900;
            font-size: 40px;
            margin-bottom: 10px;
        }

        p {
            color: #404F5E;
            font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
            font-size: 20px;
            margin: 0;
        }

        i {
            color: #9ABC66;
            font-size: 100px;
            line-height: 200px;
            margin-left: 50px;
        }

        .card {
            background: white;
            padding: 60px;
            border-radius: 4px;
            box-shadow: 0 2px 3px #C8D0D8;
            display: inline-block;
            margin: 0 auto;
        }
    </style>
    <!--top-->
    <jsp:include page="nav/Top.jsp"></jsp:include>
    <!--header-->
    <jsp:include page="nav/Header1.jsp"></jsp:include>
    <!--menu-->
    <jsp:include page="nav/Menu1.jsp"></jsp:include>

    <body>

        <div class="card" style="height: 620px;">
            <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                <i class="checkmark" class="thanks">✓</i>
            </div>
            <h1 style="    margin-left: 500px;">ĐẶT HÀNG THÀNH CÔNG</h1>
            <p style=" margin-left: 420px;">Cảm ơn khách hàng đã cho chúng tôi cơ hội được phục vụ<br />
                Nhân viên của Mobile Shop sẽ liên hệ cho quý khách để xác nhận đơn hàng
                <br />Mọi thắc mắc xin liên hệ Tư vấn mua hàng : 1800 2610 | CSKH : 1800 2003
            </p>
        </div>

    </body>
    <!--footer-->
    <jsp:include page="nav/Footer1.jsp"></jsp:include>

    </html>