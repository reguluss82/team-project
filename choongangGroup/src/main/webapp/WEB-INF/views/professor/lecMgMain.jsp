<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ include file="header.jsp"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Content</title>
	<!-- bottSTrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
	<!-- bootStrap Icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- font awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!-- CSS -->
	<link rel="stylesheet" href="/css/stylesLec.css">
	<link rel="stylesheet" href="/css/styles.css">

</head>

<body id="body-pd">
	<nav class="navbar navbar-expand-lg navbar-dark bd-navbar bg-light sticky-top position-fixed fixed-top w-100" style="position : absolute">
		<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between">
			<a href="/professor/main" class="navbar-brand">
				<img class="img-fluid ms-3" src="/images/logo2.png" alt="logo2" style="height: 40px;"><use xlink:href="#bootstrap"></use></svg>
			</a>
		</header>
		
		<div class=" flex-row float-end ms-4" style="float: right;">
			<span class="text-primary h5" ><b>${member.name}</b>님</span>
			<i style=" cursor: pointer;" onclick="location.href='/professor/mypage';" class="text-primary bi-gear-fill mx-2"></i>
			<span class="text-primary mx-3  font09">${member.major} | ${member.position} </span>
			
			<%-- <i class="bi bi-envelope-fill text-primary"></i>
			<span class="text-primary ms-2 font09">${email}</span>--%>			
		</div>
	</nav>
	
	<!-- side nav bar -->
	<div class="l-navbar" id="navbar">
		<nav class="navv">
			<div>
				<div class="nav__brand"><ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
					<a href="#" class="nav__logo"></a>
				</div>
				<!-- <a href="/professor/calenderForm" class="nav__link active"><i class="bi bi-calendar-plus nav__icon" ></i>
					<span class="nav_name">캘린더</span>
				</a> -->

				<div class="nav__list">
					<a href="/notice/noticeList" class="nav__link"><ion-icon name="pie-chart-outline" class="nav__icon"></ion-icon>
						<span class="nav_name">공지사항</span>
					</a>
	
					<div href="#" class="nav__link collapses ">
						<i class="bi bi-mortarboard-fill nav__icon"></i>
						<span class="nav_name mt-1">학사관리</span>
						<ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>
						<ul class="collapse__menu" style="width: 180px;">
							<a href="#" class="collapse__sublink mt-2 mb-3" style="font-size: 0.85rem; display: block;">강의시간표</a>
							<a href="/professor/lecMgMain"		class="collapse__sublink mb-1" style="display: block;font-size: 0.85rem;">강의관리</a>
							<a href="/professor/lecCheckList"	class="collapse__sublink ms-3" style="font-size: 0.8rem; display: block;">전자출석부</a>
							<a href="/professor/reportList"		class="collapse__sublink ms-3 mb-3"  style="font-size: 0.8rem; display: block;">과제관리</a>
							
							<a href="/professor/lecPlanPage"	class="collapse__sublink mb-3" style="font-size: 0.85rem; display: block;">강의계획서</a>
							<a href="/professor/lecCreateList"	class="collapse__sublink mb-3" style="font-size: 0.85rem; display: block;">강의개설</a>
							<a href="/professor/lecScore"		class="collapse__sublink mb-3" style="font-size: 0.85rem; display: block;">성적관리</a>
							<a href="/professor/makeupPage"		class="collapse__sublink mb-3" style="font-size: 0.85rem; display: block;">휴&#183;보강 신청</a>
						<!--  <a href="#" class="collapse__sublink" style="font-size: 0.85rem; display: block;">내선번호관리</a> -->
						</ul>
					</div>
	
					 <!--  <a href="/manage/approval" class="nav__link">
					<ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
					<span class="nav_name">결재</span>
               </a> -->
						<a href="/professor/mypage" class="nav__link">
							<ion-icon name="settings-outline" class="nav__icon"></ion-icon>
							<span class="nav_name">개인정보관리</span>
						</a>
					</div>
					<a href="/logout" class="nav__link">
						<ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
						<span class="nav_name">Log out</span>
					</a>
			</div>
		</nav>
	</div>
	<!-- /side nav bar -->

	<!------- main content ------------>
	<div class="container-fluid w-100" style=" background-color: rgb(214, 225, 237);">
		<div class="row">

			<!------------- card header  컨텐츠 폼------------->
			<main class="col-9 h-100 w-100">
				<input type="hidden" name="gubun" value="1">
				
				<div class="row m-5">
					<!------------- 컨텐츠 경로 ------------->
					<div class="col-12 rounded-top text-white overflow-auto pt-2 fw-bold" style="background-color: rgb(39, 40, 70); height: 40px;">
						<i class="bi bi-bookmark-fill me-2"></i>학사관리 &gt; 강의관리 </div>
					<!----- card content 내용 ------>
						<div class="col-12 rounded-bottom overflow-auto bg-light p-5" style="min-height: 550px;">
						
						<h2>강의관리</h2><hr>
						<p class="font08">총 <b style="color: red">${lecCnt}</b>개의 수업이 있습니다</p><br>
						<c:forEach var="lec" items="${lecList}">
							<c:if test ="${lec.status eq '0'}">
								<p style="font-size: 1.3em;">(${lec.typeCode}${lec.id}) <b>${lec.name}</b> _${lec.grade}학년</p>
								<p class="mb-1 font09">수강인원 : <b>${lec.studCount}</b>명</p>
								<div class="font09">총 수업시간 : <!-- <b style="color: red">6</b>/ -->${lec.maxCount}
									&nbsp; &#183; &nbsp; 휴강 : <b>${statusCnt1}</b> &nbsp; &#183; &nbsp; 보강 : <b>${statusCnt2}</b>
									<button type="button" class="btn btn-danger btn-sm ms-5 font09"
											onclick="location.href='lecAttendanceCheck?id=${lec.id}'">&nbsp; 전자출석부  &nbsp;</button>
									<button type="button" class="btn btn-primary btn-sm font09"	
											onclick="location.href='reportList?id=${lec.id}'">&nbsp; 과제조회  &nbsp;</button>
								<button type="button" class="btn btn-secondary btn-sm">강의평가조회</button>
								</div>
								<hr class="my-4">	
								<!-- <hr> -->
							</c:if>
						</c:forEach>
					</div>
					
					<!-- footer -->
					<footer class="col-12 mt-5" style="height: 60px; font-size: 12px;">
						<jsp:include page="../footer.jsp"></jsp:include>
					</footer> 
					<!-- </footer>  -->
				</div>
			</main>
		</div> 
	</div> <!-- container div end -->
	<!-- IONICONS -->
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
	<script src="/js/main.js"></script>
</body>
</html>