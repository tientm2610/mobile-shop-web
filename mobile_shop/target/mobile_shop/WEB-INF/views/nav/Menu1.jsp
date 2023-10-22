<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>


            <title>MOBILE SHOP - SỐ 1 VIỆT NAM</title>
            <Style>
                /* CC for Search bar */
                a {
                    color: gold;
                }

                .search-container {
                    height: 55px;
                    width: 600px;
                    display: flex;
                    background-color: #f2f2f2;
                    border: 1px solid #ccc;
                    border-radius: 25px;
                    padding: 10px;
                    max-width: 600px;
                    margin: 0 auto;
                }

                input[type="text"] {
                    border: none;
                    outline: none;
                    width: 100%;
                    padding: 10px;
                    border-radius: 25px;
                    margin-right: 10px;
                }

                button {
                    background-color: #5b5957;
                    color: #fff;


                    padding: 10px 20px;

                    border: none;

                }

                button:hover {
                    background-color: #f1f1b7;
                    color: white;
                }
            </Style>

            <!-- Core theme CSS (includes Bootstrap)-->
            <link rel="stylesheet" type="text/css" href="./css/style.css"> <!-- Đường dẫn đến file CSS -->
        </head>

        <body>
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container px-4 px-lg-5">
                    <a class="navbar-brand" href="home">MOBILE SHOP</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation"><span
                            class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                            <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#!">All Products</a></li>
                                    <li>
                                        <hr class="dropdown-divider" />
                                    </li>
                                    <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                    <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                                </ul>
                            </li>
                            <form action="search" method="post">
                                <div class="search-container">
                                    <input name="txt" type="text" placeholder="Tìm kiếm...">
                                    <button type="submit" style="border-radius: 15px">Search</button>
                                </div>
                            </form>
                        </ul>
                        <form class="d-flex" style=" margin-right: 10px; text-decoration: none;">
                            <button class="btn btn-outline-dark" style="margin-right: 10px; text-decoration: none;"
                                type="submit">

                                <a href="cart" style=" text-decoration: none;color: black;">Cart</a>

                            </button>

                            <form class="d-flex">
                                <!-- đăng nhập rồi sẽ mất chữ login -->
                                <c:if test="${sessionScope.seUser == null}">
                                    <button class="btn btn-outline-dark"
                                        style="margin-right: 10px; text-decoration: none;" type="submit">

                                        <a href="login" style=" text-decoration: none;color: black;">Login</a>
                                    </button>
                                </c:if>
                            </form>
                    </div>
                </div>
            </nav>


        </body>

        </html>