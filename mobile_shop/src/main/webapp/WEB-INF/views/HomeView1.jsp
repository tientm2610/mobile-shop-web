<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
            <img class="anh2"
                src="https://img.freepik.com/free-vector/flat-design-mobile-store-logo-template_23-2149726002.jpg">
            <img class="anh1"
                src="https://cdn2.cellphones.com.vn/insecure/rs:fill:690:300/q:80/plain/https://dashboard.cellphones.com.vn/storage/sliding-iphone15-moban-full--ver2.png">

        </header>
        <!-- <format content inside menu> -->
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <jsp:include page="nav/Sidebar.jsp"></jsp:include>
            <!-- Page content wrapper for sidebar-->
            <div id="page-content-wrapper">



                <body>

                    <!-- Section-->
                    <section class="py-5">
                        <div class="container px-4 px-lg-5 mt-5">
                            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Product image-->
                                        <img class="card-img-top"
                                            src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-14-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1693516153040"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Iphone 13 128GB</h5>
                                                <!-- Product price-->
                                                <h6 class="fw-bolder" style="color: darkblue;
                                                font-size: x-large;
                                                margin-top: 20px;">15.000.000₫</h6>
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="productDetail">Xem chi tiết</a>
                                            </div><br>
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Thêm vào giỏ hàng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute"
                                            style="top: 0.5rem; right: 0.5rem">Sale
                                        </div>
                                        <!-- Product image-->
                                        <img class="card-img-top"
                                            src="https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-compare-iphone-15-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1692827832423"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Iphone 15 128GB</h5>
                                                <!-- Product price-->
                                                <h6 class="fw-bolder" style="color: darkblue;
                                                font-size: x-large;
                                                margin-top: 20px;">21.000.000₫</h6>
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="productDetail">Xem chi tiết</a>
                                            </div><br>
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Thêm vào giỏ hàng</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute"
                                            style="top: 0.5rem; right: 0.5rem">Sale
                                        </div>
                                        <!-- Product image-->
                                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Sale Item</h5>
                                                <!-- Product price-->
                                                <span class="text-muted text-decoration-line-through">$50.00</span>
                                                $25.00
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Product image-->
                                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Popular Item</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">

                                                </div>
                                                <!-- Product price-->
                                                $40.00
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute"
                                            style="top: 0.5rem; right: 0.5rem">Sale
                                        </div>
                                        <!-- Product image-->
                                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Sale Item</h5>
                                                <!-- Product price-->
                                                <span class="text-muted text-decoration-line-through">$50.00</span>
                                                $25.00
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Product image-->
                                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Fancy Product</h5>
                                                <!-- Product price-->
                                                $120.00 - $280.00
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">View
                                                    options</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Sale badge-->
                                        <div class="badge bg-dark text-white position-absolute"
                                            style="top: 0.5rem; right: 0.5rem">Sale
                                        </div>
                                        <!-- Product image-->
                                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Special Item</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                </div>
                                                <!-- Product price-->
                                                <span class="text-muted text-decoration-line-through">$20.00</span>
                                                $18.00
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5">
                                    <div class="card h-100">
                                        <!-- Product image-->
                                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                            alt="..." />
                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">Popular Item</h5>
                                                <!-- Product reviews-->
                                                <div class="d-flex justify-content-center small text-warning mb-2">
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                </div>
                                                <!-- Product price-->
                                                $40.00
                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                    href="#">Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                </body>
            </div>
        </div>
        <!--footer-->
        <jsp:include page="nav/Footer1.jsp"></jsp:include>
    </body>

    </html>