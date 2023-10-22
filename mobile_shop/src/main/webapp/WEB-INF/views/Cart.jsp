<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <style>
                /* form payment */
                .form-payment {
                    padding: 25px;
                    margin: 25px;
                    box-shadow: 0 2px 5px #3d3939;
                    background-color: white;

                }

                .fas {
                    margin: 25px 10px 0;
                    font-size: 72px;
                    color: #fff;
                }

                .fa-envelope {
                    transform: rotate(-20deg);
                }

                .fa-at,
                .fa-mail-bulk {
                    transform: rotate(10deg);
                }

                input,
                textarea {
                    width: calc(100% - 18px);
                    padding: 8px;
                    margin-bottom: 20px;
                    border: 1px solid #1c87c9;
                    outline: none;
                }

                input::placeholder {
                    color: #666;
                }

                .button-payment {
                    width: 100%;
                    padding: 10px;
                    border: none;
                    background: #1c87c9;
                    font-size: 16px;
                    font-weight: 400;
                    color: #fff;
                }

                button:hover {
                    background: #2371a0;
                }

                /* 
            cart */
                body {
                    margin-top: 20px;
                    background: #eee;
                }

                .ui-w-40 {
                    width: 40px !important;
                    height: auto;
                }

                .card {
                    box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
                }

                .ui-product-color {
                    display: inline-block;
                    overflow: hidden;
                    margin: .144em;
                    width: .875rem;
                    height: .875rem;
                    border-radius: 10rem;
                    -webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
                    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
                    vertical-align: middle;
                }

                /* checked payment */
                .account-type {
                    margin: 15px 0;
                }

                input[type=radio] {
                    display: none;
                }

                label#icon {
                    margin: 0;
                    border-radius: 5px 0 0 5px;
                }

                label.radio {
                    position: relative;
                    display: inline-block;
                    padding-top: 4px;
                    margin-right: 20px;
                    text-indent: 30px;
                    overflow: visible;
                    cursor: pointer;
                }

                label.radio:before {
                    content: "";
                    position: absolute;
                    top: 2px;
                    left: 0;
                    width: 20px;
                    height: 20px;
                    border-radius: 50%;
                    background: #1c87c9;
                }

                label.radio:after {
                    content: "";
                    position: absolute;
                    width: 9px;
                    height: 4px;
                    top: 8px;
                    left: 4px;
                    border: 3px solid #fff;
                    border-top: none;
                    border-right: none;
                    transform: rotate(-45deg);
                    opacity: 0;
                }

                input[type=radio]:checked+label:after {
                    opacity: 1;
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

            <!-- <content></content> -->
            <!-- <format content inside menu> -->

            <div class="container px-3 my-5 clearfix">
                <!-- Shopping cart table -->
                <div class="card">
                    <div class="card-header">
                        <h2>Giỏ Hàng</h2>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered m-0">
                                <thead>
                                    <tr>
                                        <!-- Set columns width -->
                                        <th class="text-center py-3 px-4" style="min-width: 400px;">Tên Sản Phẩm &amp;
                                            Mô tả</th>
                                        <th class="text-right py-3 px-4" style="width: 100px;">Giá</th>
                                        <th class="text-center py-3 px-4" style="width: 120px;">Số lượng</th>
                                        <th class="text-right py-3 px-4" style="width: 100px;">Tổng Cộng</th>
                                        <th class="text-center align-middle py-3 px-0" style="width: 40px;"><a href="#"
                                                class="shop-tooltip float-none text-light" title=""
                                                data-original-title="Clear cart"><i class="ino ion-md-trash"></i></a>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${pList}" var="o">
                                        <tr>
                                            <td class="p-4">
                                                <div class="media align-items-center">
                                                    <img src="${o.img}" class="d-block ui-w-40 ui-bordered mr-4" alt="">
                                                    <div class="media-body">
                                                        <a href="productDetail?product_id=${o.productId}"
                                                            class="d-block text-dark">${o.productName}</a>

                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">$${o.price}
                                            </td>
                                            <td class="align-middle p-4"><input type="number"
                                                    class="form-control text-center" value="1"></td>
                                            <td class="text-right font-weight-semibold align-middle p-4">$${o.price}
                                            </td>
                                            <td class="text-center align-middle px-0"><a href="#"
                                                    class="shop-tooltip close float-none text-danger" title=""
                                                    data-original-title="Remove">×</a></td>
                                        </tr>

                                        <tr>
                                            <td class="p-4">
                                                Tên sản phẩm
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Giá</td>
                                            <td class="align-middle p-4"><input type="text"
                                                    class="form-control text-center" value="1">Số lượng</td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Tổng cộng</td>
                                            <td class="text-center align-middle px-0"><a href="#"
                                                    class="shop-tooltip close float-none text-danger" title=""
                                                    data-original-title="Remove">×</a></td>
                                        </tr>
                                        <tr>
                                            <td class="p-4">
                                                Tên sản phẩm
                                            </td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Giá</td>
                                            <td class="align-middle p-4"><input type="text"
                                                    class="form-control text-center" value="1">Số lượng</td>
                                            <td class="text-right font-weight-semibold align-middle p-4">Tổng cộng</td>
                                            <td class="text-center align-middle px-0"><a href="#"
                                                    class="shop-tooltip close float-none text-danger" title=""
                                                    data-original-title="Remove">×</a></td>
                                        </tr>

                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <!-- / Shopping cart table -->

                        <div class="d-flex flex-wrap justify-content-between align-items-center pb-4">
                            <div class="mt-4">
                                <label class="text-muted font-weight-normal">Nhập Mã Giảm Giá</label>
                                <input type="text" placeholder="ABC" class="form-control">
                            </div>
                            <button type="button" class="btn btn-lg btn-primary mt-2"
                                style="background-color: black; "><a style="text-decoration: none; color: inherit;"
                                    href="payment">Tiến Hành Thanh Toán</a>
                            </button>
                            <div class="d-flex">

                                <div class="text-right mt-4">
                                    <label class="text-muted font-weight-normal m-0">Tổng Thanh Toán</label>
                                    <div class="text-large"><strong>42.000.000₫</strong></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- form payment -->

            </div>
            <!--footer-->
            <jsp:include page="nav/Footer1.jsp"></jsp:include>
        </body>

        </html>