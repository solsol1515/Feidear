<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%String pjName = "/Feidear";%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Viaje - Travel, Tour Booking HTML5 Template</title>
    <!-- favicon -->
    <link rel=icon href="images/favicon.png" sizes="20x20" type="image/png">

    <!-- Additional plugin css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/line-awesome.min.css">
    <!-- main css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css">

</head>
<body>

    <!-- preloader area start -->
    <div class="preloader" id="preloader">
        <div class="preloader-inner">
            <div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>
        </div>
    </div>
    <!-- preloader area end -->


    <!-- //. sign up Popup -->
    <div class="signUp-popup login-register-popup" id="signUp-popup">
        <div class="login-register-popup-wrap">
            <div class="row no-gutters">
                <div class="col-lg-6">
                    <div class="thumb">
                        <img src="images/others/signup.png" alt="img">
                    </div>
                </div>
                <div class="col-lg-6 align-self-center">
                    <div class="shape-thumb">
                        <img src="images/others/signup-shape.png" alt="img">
                    </div>
                    <form class="login-form-wrap">
                        <h4 class="text-center">Sign Up</h4>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="Name">
                            <span class="single-input-title"><i class="fa fa-user"></i></span>
                        </div>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="Email">
                            <span class="single-input-title"><i class="fa fa-envelope"></i></span>
                        </div>
                        <div class="single-input-wrap style-two">
                            <input type="text" placeholder="Password">
                            <span class="single-input-title"><i class="fa fa-lock"></i></span>
                        </div>
                        <label class="checkbox">
                            <input type="checkbox">
                            <span>Remember me</span>
                        </label>
                        <div class="single-input-wrap style-two">
                            <button class="btn btn-yellow w-100">Sign Up</button>
                        </div>
                        <div class="sign-in-btn">I already have an account. <a href="#">Sign In</a></div> 
                        <div class="social-wrap">
                            <p>Or Continue With</p>
                            <ul class="social-icon">
                                <li>
                                    <a class="facebook" href="#" target="_blank"><i class="fa fa-facebook  "></i></a>
                                </li>
                                <li>
                                    <a class="twitter" href="#" target="_blank"><i class="fa fa-twitter  "></i></a>
                                </li>
                                <li>
                                    <a class="pinterest" href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                                </li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- //. sign up Popup End -->

    <!-- navbar area start -->
    <nav class="navbar navbar-area navbar-expand-lg nav-style-01">
        <div class="container nav-container">
            <div class="responsive-mobile-menu">
                <div class="mobile-logo">
                    <a href="index">
                        <img src="images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#tp_main_menu" 
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggle-icon">
                        <span class="line"></span>
                        <span class="line"></span>
                        <span class="line"></span>
                    </span>
                </button>
                <div class="nav-right-content">
                    <ul class="pl-0">
                        <li class="top-bar-btn-booking">
                            <a class="btn btn-yellow" href="tour-details">Book Now <i class="fa fa-paper-plane"></i></a>
                        </li>

                        <li class="notification">
                            <a class="signUp-btn" href="#">
                                <i class="fa fa-user-o"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="tp_main_menu">
                <div class="logo-wrapper desktop-logo">
                    <a href="index" class="main-logo">
                        <img src="images/logo.png" alt="logo">
                    </a>
                    <a href="index" class="sticky-logo">
                        <img src="images/sticky-logo.png" alt="logo">
                    </a>
                </div>
                <ul class="navbar-nav">
                    <li>
                        <a href="tour-list">축제</a>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">커뮤니티</a>
                        <ul class="sub-menu">
                            <li><a href="blog-details02">축제일기</a></li>
                            <li><a href="blog02">매거진</a></li>
                            <li><a href="blog-details">매거진 상세</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">이벤트</a>
                        <ul class="sub-menu">
                            <li><a href="blog03">제휴 이벤트</a></li>
                      		<li><a href="destination-details">서포터즈</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#">스마트 PAGE</a>
                        <ul class="sub-menu">
                            <li><a href="user-profile">MY 여행성향 분석</a></li>
                      		<li><a href="user-profile">실시간 날씨</a></li>
                      		<li><a href="user-profile">혼잡도 체크</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="faq">FAQ</a>
                    </li>
                    <li>
                        <a href="contact">1:1문의</a>
                    </li>
                </ul>
            </div>
            <div class="nav-right-content">
                <ul>
                    <li><a href="user-profile">MY PAGE</a>
                    </li>
                    <li class="pr-0">
                        <a class="btn btn-yellow" href="tour-details">축제 캘린더<i class="fa fa-paper-plane"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navbar area end -->


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">Blog</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Blog</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->

    <!-- blog area start -->
    <div class="blog-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row justify-content-center">
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/1.png" alt="blog">
                                    <a class="tag" href="#">Europe</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Why You Shouldn Elephants France.</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/2.png" alt="blog">
                                    <a class="tag" href="#">Asia</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Aliquam faucibus, nec commodo</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/3.png" alt="blog">
                                    <a class="tag" href="#">Europe</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Why You Shouldn Elephants France.</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/4.png" alt="blog">
                                    <a class="tag" href="#">Europe</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Duis pretium gravida enim, vel maximus</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/5.png" alt="blog">
                                    <a class="tag" href="#">Island </a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Duis pretium gravida enim</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/6.png" alt="blog">
                                    <a class="tag" href="#">Europe</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Why You Shouldn Elephants France.</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/7.png" alt="blog">
                                    <a class="tag" href="#">Europe</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Etiam convallis elementum sapien</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="single-blog">
                                <div class="thumb">
                                    <img src="images/blog/8.png" alt="blog">
                                    <a class="tag" href="#">Europe</a>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">19 September 2019</p>
                                    <h4 class="title"><a href="blog-details">Duis porta, ligula rhoncus euismod</a></h4>
                                    <p class="content">Praesent eu dolor eu orci vehicula euismod. Vivamus sed sollicitudin libero, vel malesuada</p>
                                    <a class="btn-read-more" href="blog-details"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12  text-md-center text-left">
                            <div class="tp-pagination text-md-center text-left d-inline-block mt-4">
                                <ul>
                                    <li><a class="prev page-numbers" href="#"><i class="la la-long-arrow-left"></i></a></li>
                                    <li><span class="page-numbers">1</span></li>
                                    <li><span class="page-numbers current">2</span></li>
                                    <li><a class="page-numbers" href="#">3</a></li>
                                    <li><a class="page-numbers" href="#">4</a></li>
                                    <li><a class="next page-numbers" href="#"><i class="la la-long-arrow-right"></i></a></li>
                                </ul>                          
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <aside class="sidebar-area sidebar-area-4">
                        <div class="widget widget_search bg-none pd-none">
                            <form class="search-form">
                                <div class="form-group">
                                    <input type="text" placeholder="Search">
                                </div>
                                <button class="submit-btn" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <div class="widget widget_categories">
                            <h2 class="widget-title">Category</h2>
                            <ul>
                                <li><a href="#">Software</a> 33</li>
                                <li><a href="#">App Landing</a> 81</li>
                                <li><a href="#">Saas Landing</a> 12</li>
                                <li><a href="#">Design Studio</a> 17</li>
                                <li><a href="#">Business Studio</a> 21</li>
                                <li><a href="#">Product Showcase</a> 62</li>
                            </ul>
                        </div>
                        <div class="widget widget-recent-post">
                            <h2 class="widget-title">Recent Post</h2>
                            <ul>
                                <li>
                                    <div class="media">
                                        <img src="images/blog-details/12.png" alt="widget">
                                        <div class="media-body">
                                            <span class="post-date">20 July 2019</span>
                                            <h6 class="title"><a href="#">Duis neque vel elit pharetra vestibulu</a></h6>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <img src="images/blog-details/13.png" alt="widget">
                                        <div class="media-body">
                                            <span class="post-date">21 July 2019</span>
                                            <h6 class="title"><a href="#">Praesent eu dolor eu orci vehicula</a></h6>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <img src="images/blog-details/14.png" alt="widget">
                                        <div class="media-body">
                                            <span class="post-date">14 July 2019</span>
                                            <h6 class="title"><a href="#">Aenean non accumsan ante. Duis</a></h6>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="media">
                                        <img src="images/blog-details/15.png" alt="widget">
                                        <div class="media-body">
                                            <span class="post-date">20 July 2019</span>
                                            <h6 class="title"><a href="#">Pellentesque habitant morbi</a></h6>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="widget widget_tag_cloud">
                            <h2 class="widget-title">Tags</h2>
                            <div class="tagcloud">
                                <a href="#">Adbeger</a>
                                <a href="#">Religion</a>
                                <a href="#">Relax</a>
                                <a href="#">Nature</a>
                                <a href="#">Descover</a>
                            </div>
                        </div>
                        <div class="widget_ads">
                            <a href="#"><img class="w-100" src="images/others/01.png" alt="img"></a>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- blog area End -->
    
    <!-- newslatter area Start -->
    <div class="newslatter-area newslatter-area-blog pd-top-108">
        <div class="container">
            <div class="newslatter-area-wrap border-tp-solid">
                <div class="row">
                    <div class="col-xl-3 col-lg-6 col-md-5 offset-xl-2">
                        <div class="section-title mb-md-0">
                            <h2 class="title">Newsletter</h2>
                            <p>Sign up to receive the best offers</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-7 align-self-center offset-xl-1">
                        <div class="input-group newslatter-wrap">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Email">
                            <div class="input-group-append">
                                <button class="btn btn-yellow" type="button">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- newslatter area End -->
    
    <!-- footer area start -->
    <footer class="footer-area" style="background-image: url(images/bg/2.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="footer-widget widget">
                        <div class="about_us_widget">
                            <a href="index" class="footer-logo"> 
                                <img src="images/logo.png" alt="footer logo">
                            </a>
                            <p>We believe brand interaction is key in commu- nication. Real innovations and a positive customer experience are the heart of successful communication.</p>
                            <ul class="social-icon">
                                <li>
                                    <a class="facebook" href="#" target="_blank"><i class="fa fa-facebook  "></i></a>
                                </li>
                                <li>
                                    <a class="twitter" href="#" target="_blank"><i class="fa fa-twitter  "></i></a>
                                </li>
                                <li>
                                    <a class="pinterest" href="#" target="_blank"><i class="fa fa-instagram"></i></a>
                                </li>
                            </ul>
                       </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget widget ">
                        <div class="widget-contact">
                            <h4 class="widget-title">Contact us</h4>
                            <p>
                                <i class="fa fa-map-marker"></i> 
                                <span>Manama Tower, Badda Link Road, Badda Dhaka, Bangladesh</span>
                            </p>
                            <p class="location"> 
                                <i class="fa fa-envelope-o"></i>
                                <span>travelpoint@gmail.com</span>
                            </p>
                            <p class="telephone">
                                <i class="fa fa-phone base-color"></i> 
                                <span>
                                    +088 012121240
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="footer-widget widget">
                        <h4 class="widget-title">Quick Link</h4>
                        <ul class="widget_nav_menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Destination</a></li>
                            <li><a href="#">Tours</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget widget">
                        <h4 class="widget-title">Instagram Gallery</h4>
                        <ul class="widget-instagram-feed">
                            <li><a href="#"><img src="images/instagram/1.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/2.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/3.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/4.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/5.png" alt="img"></a></li>
                            <li><a href="#"><img src="images/instagram/6.png" alt="img"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-inner">
            <div class="copyright-text">
                &copy; Viaje 2019 All rights reserved. Powered with <a href="http://zwin.io/" target="_blank"><i class="fa fa-heart"></i> </a> by <a href="http://zwin.io/" target="_blank"><span>Zwin.</span></a>
            </div>
        </div>
    </footer>
    <!-- footer area end -->

    <!-- back to top area start -->
    <div class="back-to-top">
        <span class="back-top"><i class="fa fa-angle-up"></i></span>
    </div>
    <!-- back to top area end -->


    <!-- Additional plugin js -->
    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/swiper.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jarallax.min.js"></script>

    <!-- main js -->
    <script src="js/main.js"></script>

</body>
</html>