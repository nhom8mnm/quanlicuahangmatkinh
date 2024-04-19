<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initakl-scale=1">
<title>Mắt kính - Trang chủ </title>

<link rel="stylesheet" href="css/style.css">
</head>
<body>
<body>
    <header>
        <div id="logo">
            <p>WILSON</p>
        </div>
        <nav id="hnav">
            <ul class="menu">
                <li><a href="Collection" target="_blank">COLLECTIONS</a></li>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">BLOG</a></li>
                <li><a href="#">CONTACT</a></li>
                <li><a href="Signup">SIGN IN/SIGN UP</a></li>
            </ul>
        </nav>
        <div>
            <form method="post" action="#">
                <input type="text" name="txtSearch" placeholder="What are you looking for?" size="30"/>
                <input type="button" name="btSearch" value="SEARCH" onclick="#"/>
            </form>
        </div>
    </header>
    <main>
        <div id="banner">
            <img class="banner" src="Images/anhbia2.png">
        </div>
        <div class="banner2">
            <p class="p1">YOUR STYLE, YOUR SHADE</p>
            <p class="p2">SUPERSMOOTH YOUR LIFE</p>
            <button class="shopnow">SHOP NOW</button>
        </div>
        <section class="trending">
        <hr>
            <h2>TRENDING PRODUCTS</h2>
            <p class="intro">Sleek, comfortable, and timeless. Make a statement with their minimalist design</p>
            <c:forEach items="${trendlistp}" var="o">
                <div class="product">
                    <img src="${o.productImg}" alt="Product Image">
                    <p>${o.productName}<br/><span>${o.productPrice}</span></p>
                    <button>Thêm vào giỏ hàng</button>
                </div>
            </c:forEach>
            <hr/>
        </section>
        <section class="popular">
       
            <h2>POPULAR PRODUCTS</h2>
            <p class="intro">Level up your frame game with these must-have looks.</p>
            <c:forEach items="${popularlistp}" var="p">
                <div class="product">
                    <img src="${p.productImg}" alt="Giày da thủ công">
                    <p>${p.productName}<br/><span>${p.productPrice}</span></p>
                    <button>Thêm vào giỏ hàng</button>
                </div>
            </c:forEach>
            <hr/>
        </section>
        <section class="blog">
            <h2>LASTED FROM THE BLOGS</h2>
            <p>Get ready to look smart in your new pair of Wilson glasses!</p>
            <section class="blogs">
                <article>
                    <p><span>Everyone should have access to high-quality, affordable eyeglasses, so we created a huge range of frame styles for everyone,With additional options including Blokz blue-light-blocking glasses, prescription and non-prescription sunglasses, flexible kids’ glasses, and safety glasses, why limit yourself to just one pair? Express all facets of your personality frames in every style, shape, and color imaginable.</span><br/><span>read more</span></p>
                </article>
                <!-- Add other articles -->
            </section>
        </section>
        <div class="signup">
            <label class="label-signup">Sign up for free updates, latest news, and special offers</label>
            <form method="post" action="#">
                <input type="text" name="name" placeholder="Your name" size="30" />
                <input type="text" name="email" placeholder="Email" size="30" />
                <input type="submit" name="submit" value="Sign Up"/>
            </form>
        </div>
    </main>
    <footer>
        <div id="extend-f">
            <nav class="footnavl">
                <h3>CUSTOMER SERVICES</h3>
                <ul>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Return</a></li>
                    <li><a href="#">Site map</a></li>
                    <li><a href="#">Gift Vouchers</a></li>
                </ul>
            </nav>
            <nav class="footnav2">
                <h3>INFORMATIONS</h3>
                <ul>
                    <li><a href="#">About me</a></li>
                    <li><a href="#">Delivery information</a></li>
                    <li><a href="#">Privacy policy</a></li>
                </ul>
            </nav>
            <nav class="footnav3">
                <h3>SOCIAL NETWORK LINK</h3>
                <ul>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Google+</a></li>
                    <li><a href="#">Twitter</a></li>
                </ul>
            </nav>
        </div>
        <div id="root-f">
            <h4>2024&copy; Design by nhom8</h4>
        </div><!--  -->
    </footer>
</body>
</html>