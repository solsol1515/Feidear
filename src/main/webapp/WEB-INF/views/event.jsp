<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%String pjName = "/Feidear";%>

	<!-- header.jsp -->
    <%@ include file='header.jsp' %>
	<!-- header.jsp 끝 -->


    <!-- 이벤트 제휴 페이지 상단바 밑 제목 area start -->
   <div class="breadcrumb-area jarallax" style="background-image:url(images/bg/1.png);">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-inner">
                        <h1 class="page-title">EVENT</h1>
                        <ul class="page-list">
                          <li>페이디어 제휴 이벤트 목록</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 이벤트 제휴 페이지 상단바 밑 제목 area End -->

	<!-- 이벤트 제휴 페이지 본문 area start -->
	
    <!-- 이벤트 설명 area start -->
    <div class="blog-details-area pd-top-120">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="gallery-filter-area row justify-content-center">

                        <div class="gallery-sizer col-1"></div>
                                <c:forEach items="${eventList}" var="events">
                        <div class="col-lg-6 col-md-6 tp-gallery-item">
                            <div class="single-blog">
                                <div class="thumb">
                                  <c:if test="${events.file_path != null}">
                                    <img src="${events.file_path}" alt="blog">
                                    <a class="tag" href="#">진행 중</a>
                                  </c:if>
                                  <c:if test="${events.file_path == null}">
                                    <img src="images/blog/1.png" alt="blog">
                                    <a class="tag" href="#">진행 중</a>
                                  </c:if>
                                </div>
                                <div class="single-blog-details">
                                    <p class="date">${events.ev_regdate}</p>
                                    <h4 class="title"><a href="event-details?ev_no=${events.ev_no}">${events.ev_title}</a></h4>
                                    <a class="btn-read-more" href="event-details?ev_no=${events.ev_no}"><span>Read More<i class="la la-arrow-right"></i></span></a>
                                </div>
                            </div>
                        </div>
                                </c:forEach>


                    </div>

<!-- 페이징 -->

<!-- 페이징 시작 -->
                    <div class="row">
                        <div class="col-lg-12  text-md-center text-left">
                            <div class="tp-pagination text-md-center text-left d-inline-block mt-4">
                                <ul>
                                	<c:if test="${pageMaker.prev}">
                                    	<li><a class="prev page-numbers" href="event${pageMaker.makeQuery(pageMaker.startPage - 1)}"><i class="la la-long-arrow-left"></i></a></li>
                                	</c:if>
                                	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">                                	
                                    <li><a href="event${pageMaker.makeQuery(idx)}">
                                    	<!--현재 파라미터로 넘겨받은 페이지의 숫자가 생성되는 숫자와 같으면(현재 페이지) -->
                                    	<c:if test="${param.page eq idx}">
                                    	<span class="page-numbers current">${idx}</span>
                                    	</c:if>
                                    	
                                    	<!--현재 파라미터로 넘겨받은 페이지의 숫자가 생성되는 숫자와 다르면(나머지 페이지) -->
                                    	<c:if test="${param.page ne idx}">
                                    	<span class="page-numbers">${idx}</span>
                                    	</c:if>
                                    	
                                    	</a></li>
                                	</c:forEach>
                                	<!-- 
                                    <li><span class="page-numbers current">2</span></li>
                                    <li><a class="page-numbers" href="#">3</a></li>
                                	-->                                	
                                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                                    	<li><a class="next page-numbers" href="event${pageMaker.makeQuery(pageMaker.endPage + 1)}"><i class="la la-long-arrow-right"></i></a></li>
                                	</c:if> 
                                </ul>                          
                            </div>
                        </div>
                    </div>
                    <!-- 페이징 끝 -->

<!-- 페이징 -->
                </div>
                <!-- 이벤트 설명 area end -->
                
 <!-- 축제 일기 우측 사이드바 시작 -->
                <div class="col-lg-4"  id="select-category">
                    <aside class="sidebar-area sidebar-area-4">
                        
                        <!-- 인기 태그 시작 -->
                        <div class="widget widget_tag_cloud">
                            <h2 class="widget-title">인기 태그</h2>
                            <div class="tagcloud">
                                <a href="#">눈꽃</a>
                                <a href="#">데이트</a>
                                <a href="#">별빛</a>
                                <a href="#">사랑</a>
                                <a href="#">빙어</a>
                            </div>
                        </div>
                        <!-- 인기 태그 끝 -->
                        
                        <!-- 광고 배너 시작 -->
                            <div class="widget widget_tag_cloud">
	                            <h2 class="widget-title">광고 배너</h2>
	                           <a href="#"><img src="/images/others/01.png" alt="img"></a>
                            </div>
                        <!-- 광고 배너 끝 -->
                    </aside>
                </div>
                <!-- 축제 일기 우측 사이드바 끝 -->    
                 
                </div>
            </div>
        </div>
    </div>
    <!-- 이벤트 제휴 페이지 본문 area end -->
    
    
	​
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
	<!-- footer.jsp -->
  	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>