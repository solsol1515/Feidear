<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String pjName = "/Feidear";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>FeiDear Admin | 축제 등록</title>

<!-- Bootstrap -->
<link
	href="vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link
	href="vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link
	href="vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link
	href="vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link
	href="vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link
	href="vendors/starrr/dist/starrr.css"
	rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link
	href="vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="build/css/custom.min.css"
	rel="stylesheet">
<style type="text/css">
@font-face {
	font-family: 'TmoneyRoundWindRegular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/TmoneyRoundWindRegular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
</head>

<body class="nav-md" style="font-family: TmoneyRoundWindRegular">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<!-- 사이드바 메뉴 시작 -->
					<div class="col-md-3 left_col">
						<div class="left_col scroll-view">

							<!-- 대시보드(어드민 인덱스) 이동 -->
							<div class="navbar nav_title">
								<a href="index" class="site_title"><i
									class="fa fa-lightbulb-o" style="border: 0;"></i> <span>FeiDear
										Admin</span></a>
							</div>

							<div class="clearfix"></div>

							<!-- 어드민 사이드 메뉴 이동 -->
							<div id="sidebar-menu"
								class="main_menu_side hidden-print main_menu">
								<div class="menu_section">
									<ul class="nav side-menu">
										<li><a href="../index"><i
												class="fa fa-arrow-circle-right" aria-hidden="true"></i>사용자
												페이지 이동</a></li>
										<li class="active"><a><i class="fa fa-trophy"></i>축제
												관리<span class="fa fa-chevron-down"></span></a>
											<ul class="nav child_menu">
												<li><a href="manageFestivals">축제 목록</a></li>
												<li class="active"><a href="insertFestival">축제 등록</a></li>
											</ul></li>
										<li><a href="manageUsers"><i class="fa fa-users"></i>회원
												관리</a></li>
										<li><a href="communityAdmin"><i
												class="fa fa-comments"></i>커뮤니티 관리</a></li>
										<li><a href="manageQnA"><i
												class="fa fa-question-circle"></i>문의사항 관리</a></li>
										<li><a href="eventAdmin"><i
												class="fa fa-calendar-check-o"></i>이벤트 관리</a></li>

									</ul>
								</div>


							</div>
							<!-- /sidebar menu -->
						</div>
					</div>
					<!-- 사이드바 메뉴 끝 -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<div class="nav toggle">
						<a id="menu_toggle" style="padding : 15px 15px 15px;"><i class="fa fa-bars"></i></a>
					</div>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- 본문 내용 -->
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12 col-sm-12 ">
						<div class="x_panel">
							<div class="x_title">
								<h2>축제 정보 수정</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<br />
								<form id="updateFestivalForm" name="updateFestivalForm"
									data-parsley-validate class="form-horizontal form-label-left">
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_no">축제 번호 <span class="required">*</span></label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_no" name="fstv_no"
												class="form-control" readonly="readonly" required="required"
												placeholder="축제 번호는 자동 입력됩니다">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_name">축제 이름 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_name" name="fstv_name"
												required="required" class="form-control "
												placeholder="축제 이름을 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align">지역
											분류 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<select id="fstv_area" name="fstv_area"
												class="select2_single form-control" tabindex="-1">
												<option value="#서울">서울</option>
												<option value="#강원">강원</option>
												<option value="#경기">경기</option>
												<option value="#경남">경남</option>
												<option value="#경북">경북</option>
												<option value="#광주">광주</option>
												<option value="#대구">대구</option>
												<option value="#대전">대전</option>
												<option value="#부산">부산</option>
												<option value="#세종">세종</option>
												<option value="#울산">울산</option>
												<option value="#인천">인천</option>
												<option value="#전남">전남</option>
												<option value="#전북">전북</option>
												<option value="#제주">제주</option>
												<option value="#충남">충남</option>
												<option value="#충북">충북</option>
												<option value="#온라">온라인</option>
											</select>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="FSTV_STARTDATE">시작일 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input id="FSTV_STARTDATE" name="FSTV_STARTDATE"
												class="date-picker form-control" placeholder="yyyy-mm-dd"
												type="text" required="required" onfocus="this.type='date'"
												onmouseover="this.type='date'" onclick="this.type='date'"
												onblur="this.type='text'"
												onmouseout="timeFunctionLong(this)">
											<script>
												function timeFunctionLong(input) {
													setTimeout(function() {
														input.type = 'text';
													}, 60000);
												}
											</script>
										</div>
									</div>
									<!-- 텍스트에서 -를 .으로 바꾸는 과정 필요 -->
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="FSTV_ENDDATE">종료일 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input id="FSTV_ENDDATE" name="FSTV_ENDDATE"
												class="date-picker form-control" placeholder="yyyy-mm-dd"
												type="text" required="required" onfocus="this.type='date'"
												onmouseover="this.type='date'" onclick="this.type='date'"
												onblur="this.type='text'"
												onmouseout="timeFunctionLong(this)">
											<script>
												function timeFunctionLong(input) {
													setTimeout(function() {
														input.type = 'text';
													}, 60000);
												}
											</script>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_short">짧은 설명 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_short" name="fstv_short"
												required="required" class="form-control "
												placeholder="축제 이름 아래에 출력될 짧은 설명">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_image">축제 이미지 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="file" id="fstv_image" name="fstv_image"
												required="required" class="form-control "
												placeholder="축제 이미지를 등록해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_tel">전화번호 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="tel" id="fstv_tel" name="fstv_tel"
												required="required" class="form-control "
												placeholder="축제 관계자 전화번호를 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_homepage">홈페이지 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="url" id="fstv_homepage" name="fstv_homepage"
												required="required" class="form-control "
												placeholder="관련 홈페이지 주소를 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_addr">주소 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_addr" name="fstv_addr"
												required="required" class="form-control "
												placeholder="주소를 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_place">행사 장소 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_place" name="fstv_place"
												required="required" class="form-control "
												placeholder="행사 장소를 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_host">주최 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_host" name="fstv_host"
												required="required" class="form-control "
												placeholder="주최를 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_fee">이용 요금 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_fee" name="fstv_fee"
												required="required" class="form-control "
												placeholder="이용 요금이 있다면 입력해 주세요">
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_time">행사 시간 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_time" name="fstv_time"
												required="required" class="form-control "
												placeholder="행사 시간을 입력해 주세요">
										</div>
									</div>

									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="FSTV_INFO">상세 설명 <span class="required">*</span>
										</label>
										<div class="col-md-6 col-sm-6 ">
											<textarea class="form-control" rows="10" id="FSTV_INFO"
												name="FSTV_INFO" placeholder="축제 상세 설명을 입력해 주세요"></textarea>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="FSTV_TAG">태그 <span class="required">*</span></label>
										<div class="col-md-6 col-sm-6 ">
											<input id="tags_1" name="FSTV_TAG" type="text"
												class="tags form-control" value="social, adverts, sales" />
											<div id="suggestions-container"
												style="position: relative; float: left; width: 250px; margin: 10px;"></div>
										</div>
									</div>
									<div class="item form-group">
										<label class="col-form-label col-md-3 col-sm-3 label-align"
											for="fstv_cnt">현재 조회수 </label>
										<div class="col-md-6 col-sm-6 ">
											<input type="text" id="fstv_cnt" name="fstv_cnt"
												class="form-control" readonly="readonly" required="required"
												placeholder="축제 등록 후 자동으로 생성됩니다">
										</div>
									</div>
									<div class="ln_solid"></div>
									<div class="item form-group">
										<div class="col-md-6 col-sm-6 offset-md-3"
											style="margin-top: 10px;">
											<button class="btn btn-secondary" type="button">취소</button>
											<button class="btn btn-danger" type="reset">초기화</button>
											<button type="submit" class="btn btn-primary">저장</button>
										</div>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					Gentelella - Bootstrap Admin Template by <a
						href="https://colorlib.com">Colorlib</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
	<script
		src="vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script
		src="vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script
		src="vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script
		src="vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script
		src="vendors/moment/min/moment.min.js"></script>
	<script
		src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap-wysiwyg -->
	<script
		src="vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script
		src="vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script
		src="vendors/google-code-prettify/src/prettify.js"></script>
	<!-- jQuery Tags Input -->
	<script
		src="vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
	<!-- Switchery -->
	<script
		src="vendors/switchery/dist/switchery.min.js"></script>
	<!-- Select2 -->
	<script
		src="vendors/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script
		src="vendors/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script
		src="vendors/autosize/dist/autosize.min.js"></script>
	<!-- jQuery autocomplete -->
	<script
		src="vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script
		src="vendors/starrr/dist/starrr.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="build/js/custom.min.js"></script>

</body>
</html>
