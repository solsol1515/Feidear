<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String pjName = "/Feidear";%>

<jsp:include page="header.jsp"></jsp:include>


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area jarallax" style="background-image:url(/images/index/breadcrumb.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12"><br>
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">축제 상세</h1>
                        <ul class="page-list">
                            <li><a href="index">Home</a></li>
                            <li>Festival Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area End -->
    
    <!-- tour details area End -->
    <div class="tour-details-area mg-top--70">
        <div class="tour-details-gallery">
            <div class="container-bg bg-dark-blue">
                <div class="container">
                    <div class="gallery-filter-area row">
                        <div class="gallery-sizer col-1"></div>
                        
                        <!-- gallery-item
                        <div class="tp-gallery-item col-md-5 col-sm-6 mb-10">
                            <div class="tp-gallery-item-img">
                                <div class="thumbnails">
                                    <img src="../images/tour-details/1.png" alt="image">
                                    <div class="video-popup-btn">
                                        <a href="https://www.youtube.com/watch?v=c7XEhXZ_rsk" class="video-play-btn mfp-iframe" tabindex="0"><i class="fa fa-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="tp-gallery-item col-lg-6 col-md-7 col-sm-10">
                            <div class="tp-gallery-item-img">
                                <a href="#" data-effect="mfp-zoom-in">
                                    <img src="../images/tour-details/${view.fetv_image}" alt="image">
                                </a>
                            </div>
                        </div>-->
                        
                    </div>
                    <div class="row">
                        <form action="viewFestival" id="viewFestival" name="viewFestival" method="get" style="width: 150%;">
                        <div class="col-xl-3 col-lg-4">
                            <h4 type="hidden" name="fetv_no" style="color: aliceblue;"></h4>
                            <div class="details">
                                <c:if test="${not empty view.fetv_startdate}">
                                    <b style="font-size: 1.3em; color: darkorange;"><i class="fa fa-calendar-o"></i>&nbsp&nbsp&nbsp${view.fetv_startdate} &nbsp&nbsp~&nbsp&nbsp ${view.fetv_enddate}</b><br>
                                </c:if>
                                <c:if test="${empty view.fetv_startdate}">
                                    <b style="font-size: 1.3em; color: aqua;"><i class="fa fa-exclamation-triangle"></i>&nbsp&nbsp&nbsp일정이 업데이트 될 예정입니다</b>
                                </c:if><br>
                                
                                <h4 style="font-size: 3.5em; width: 25em;" name = "fetv_name" id="fetv_name">${view.fetv_name}</h4>
                            </div>
                        </div><br>
                        <div class="col-xl-9 col-lg-8">
                            <div class="book-list-warp">
                                <p class="book-list-content" style="font-size: 1.5em;">${view.fetv_short}</p><br>
                            </div><br>
                            <ul class="tp-list-meta border-tp-solid">
                                <p class="location mb-0" id="fetv_place" style="font-size: 1.3em; width: 100%; color: white;"><i class="fa fa-map-marker"></i>&nbsp ${view.fetv_place}</p><br>
                                
                                <c:if test="${not empty view.fetv_time}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-clock-o"></i>&nbsp&nbsp${view.fetv_time}</li><br>
                                </c:if>
                                <c:if test="${empty view.fetv_time}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-clock-o"></i>&nbsp&nbsp미정</li><br>
                                </c:if>

                                <c:if test="${not empty view.fetv_tel}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-phone"></i>&nbsp&nbsp${view.fetv_tel}</li><br>
                                </c:if>
                                <c:if test="${empty view.fetv_tel}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-phone"></i>&nbsp&nbsp홈페이지 참조</li><br>
                                </c:if>

                                <c:if test="${not empty view.fetv_homePage}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-info-circle"></i>&nbsp&nbsp<a href = "${view.fetv_homePage}">${view.fetv_homePage}</a></li><br>
                                </c:if>
                                <c:if test="${empty view.fetv_homePage}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-info-circle"></i>&nbsp&nbsp등록된 정보가 없습니다</li><br>
                                </c:if>

                                <c:if test="${not empty view.fetv_fee}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-credit-card-alt"></i>&nbsp&nbsp${view.fetv_fee}</li>
                                </c:if>
                                <c:if test="${empty view.fetv_fee}">
                                    <li class="ml-0" style="font-size: 1.2em;"><i class="fa fa-credit-card-alt"></i>&nbsp&nbsp등록된 정보가 없습니다</li>
                                </c:if><br><br>

                                <i style="font-size: 1.2em; color: darkorange;">${view.fetv_tag}</i>
                            </ul>
                        </div> 
                        <input type="hidden" id="fetv_lat" value="${view.fetv_lat}"> 
                        <input type="hidden" id="fetv_long" value="${view.fetv_long}"> 
                        <input type="hidden" id="fetv_addr" value="${view.fetv_addr}"> 
                        </form> 
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="tour-details-wrap">
                        <h4 class="single-page-small-title" style="font-size: 2.7em;">상세 정보</h4>
                        <br>
                        <p style="font-size: 22px;">${view.fetv_info}</p>
                        <br>
                        <div class="package-included-location">
                            <h4 class="single-page-small-title" style="font-size: 2.7em;">축제 사진</h4><br>
                            <div>
                                <img src="/festival_imgs/${view.fetv_image}">
                            </div><br><br><br>

                            <!-- 여기 아래엔 건드린거 없음.. 근데 추천코스 지우면 사이드바 고장남...... 환장 by.유인 -->

                            <h4 class="single-page-small-title" style="font-size: 2.7em;">추천 코스</h4><br>
                            <div class="row">
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog">
                                        <div class="p-list">
                                            <div class="list">1</div>
                                            <p>맛집</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="/images/blog/8.png" alt="blog">
                                        </div>
                                        <div class="single-blog-details">
                                            <h4 class="title">Welcome to St. John's</h4>
                                            <p class="content">After a welcome drink, we'll stroll into town and get to know each other over a hyper-local ânose-to-tailâ dinner. Show more</p>
                                            <a class="btn-read-more" href="#"><span>Show More<i class="la la-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog">
                                        <div class="p-list">
                                            <div class="list">2</div>
                                            <p>&nbsp</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="/images/blog/1.png" alt="blog">
                                        </div>
                                        <div class="single-blog-details">
                                            <h4 class="title">Relaxation & Exploration</h4>
                                            <p class="content">After a welcome drink, we'll stroll into town and get to know each other over a hyper-local ânose-to-tailâ dinner. Show more</p>
                                            <a class="btn-read-more" href="#"><span>Show More<i class="la la-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-blog single-blog-after-none">
                                        <div class="p-list">
                                            <div class="list">3</div>
                                            <p>관광명소</p>
                                        </div>
                                        <div class="thumb">
                                            <img src="/images/blog/9.png" alt="blog">
                                        </div>
                                        <div class="single-blog-details">
                                            <h4 class="title">Farewell & Departure</h4>
                                            <p class="content">After a welcome drink, we'll stroll into town and get to know each other over a hyper-local ânose-to-tailâ dinner. Show more</p>
                                            <a class="btn-read-more" href="#"><span>Show More<i class="la la-arrow-right"></i></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><br>

                        <div class="service-location-map">
                            <h4 class="single-page-small-title" style="font-size: 2.7em; color: darkorange;">Service Location</h4>
                                <input type="button" id="matjip" value="식당">
                                <input type="button" id="parkingLot" value="주차장">
                                <input type="button" id="hotel" value="숙소">
                                <div id="map" style="width:100%;height:350px; margin-top: 2%;"></div>
                        </div><br><br>
                        
                        <div class="comments-area tour-details-review-area">
                            <h4 class="comments-title">Reviews</h4>
                            <ul class="comment-list mb-0">
                                <li>
                                    <div class="single-comment-wrap">
                                        <div class="thumb">
                                            <img src="/images/client/3.png" alt="img">
                                        </div>
                                        <div class="content">
                                            <h4 class="title">Eliza Jordan</h4>
                                            <span class="date">17 SEP 2019</span>
                                            <div class="tp-review-meta">
                                                <i class="ic-yellow fa fa-star"></i>
                                                <i class="ic-yellow fa fa-star"></i>
                                                <i class="ic-yellow fa fa-star"></i>
                                                <i class="ic-yellow fa fa-star"></i>
                                                <i class="ic-yellow fa fa-star"></i>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div><br>
                        <div class="location-review-area">
                            <form class="tp-form-wrap bg-gray tp-form-wrap-one">
                                <div class="row">
                                    <div class="col-lg-6"><h4 class="single-page-small-title">Write A Review</h4></div>
                                    <div class="col-lg-6">
                                        <div class="tp-review-meta text-lg-right">
                                            <span class="mr-3 ml-0">Assigned Rating</span>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="single-input-wrap">
                                            <span class="single-input-title">Name</span>
                                            <input type="text">
                                        </label>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="single-input-wrap">
                                            <span class="single-input-title">Email</span>
                                            <input type="text">
                                        </label>
                                    </div>
                                    <div class="col-lg-12">
                                        <label class="single-input-wrap">
                                            <span class="single-input-title">Comments</span>
                                            <textarea></textarea>
                                        </label>
                                    </div>
                                    <div class="col-12">
                                        <a class="btn btn-yellow" href="#">Send</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- 사이드 바 광고배너 -->
                <div class="col-lg-4">
                    <div class="sidebar-area sidebar-area-4">
                    <div>
                        <form id="addWishForm" name="addWishForm">
                            <input type="hidden" name="fetv_no" value="${view.fetv_no}">
                            <input type="hidden" name="u_no" value="${sessionScope.u_no}">
                        </form>
                        <c:if test="${not empty sessionScope.u_id}">
                        <button class="btn btn-new-Green" id="addWish_btn"><span>북마크 추가</span></button>&nbsp&nbsp&nbsp&nbsp
                        </c:if>
                        <c:if test="${empty sessionScope.u_id}">
                            <button class="btn btn-new-Green" id="addWish_btn_no_user"><span>북마크 추가</span></button>&nbsp&nbsp&nbsp&nbsp
                        </c:if>
                        <a href = "/viewFestivalList"><button class="btn btn-new-gray"><span>목록으로 돌아가기</span></button></a>
                    </div>
                    <br><br>
                        <div class="widget_ads">
                            <a href="#"><img class="w-100" src="/images/others/01.png" alt="img"></a>
                        </div><br>
                        <div class="widget_ads">
                            <a href="#"><img class="w-100" src="/images/others/01.png" alt="img"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tour details area End -->

    <!-- newslatter area Start -->
    <div class="newslatter-area pd-top-120">
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
    
    <!-- Additional plugin js -->
    <script src="/js/jquery-2.2.4.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.magnific-popup.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/wow.min.js"></script>
    <script src="/js/slick.js"></script>
    <script src="/js/waypoints.min.js"></script>
    <script src="/js/jquery.counterup.min.js"></script>
    <script src="/js/imagesloaded.pkgd.min.js"></script>
    <script src="/js/isotope.pkgd.min.js"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jarallax.min.js"></script>

    <!-- main js -->
    <script src="/js/main.js"></script>
    <script src="/js/infra.js"></script>

    <script type="text/javascript">
        window.onload = function () {

        // 상세 페이지에서 북마크 추가시
        $('#addWish_btn').click(function(){
            $.ajax({
            type: "post",
            url: "/user/addWish",
            data: $("#addWishForm").serialize(),
            success: function(result){ 
            if(result == 'fail'){
                alert("이미 북마크한 축제입니다");
            } else if(result == 'success'){
                alert("북마크에 추가되었습니다");}
                    }, // success
            error: function(err){alert("error"); console.log(err); }
                }); // ajax
            }); // addCart.click

            $('#addWish_btn_no_user').click(function(){
            alert("로그인이 필요한 기능입니다");
        });
    }
       </script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f54e5fa70f300c6bceae2d75423344ec&libraries=services"></script>
<script>
    // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
    var infowindow = new kakao.maps.InfoWindow({zIndex:1});

    var lat = $('#fetv_lat').val();
    var long = $('#fetv_long').val();

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
    center: new kakao.maps.LatLng(lat, long), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
    };  

    
    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption); 


</script>             
    
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>