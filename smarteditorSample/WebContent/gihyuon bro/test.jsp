<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  --%> 
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Healer</title>
<link rel="stylesheet" type="text/css" href="/Healer/style.css"/>
<script type="text/javascript" src="jquery.js"></script>
<script src="/Healer/javascript.js"></script>
<script type="text/javascript" src="/Healer/admin/admin.js"></script>
<script type="text/javascript" src="/Healer/board/board.js"></script>
<script type="text/javascript" src="/Healer/customerCenter/customerCenter.js"></script>
<script type="text/javascript" src="/Healer/member/member.js"></script>
<script type="text/javascript" src="/Healer/mypage/mypage.js"></script>
<script type="text/javascript" src="/Healer/seller/seller.js"></script>
<script type="text/javascript" src="/Healer/product/product.js"></script>
<script type="text/javascript" src="/Healer/cart/cart.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="resource/jquery.bxslider.min.js"></script>
<link href="resource/jquery.bxslider.css" rel="stylesheet" />

<!-- 메인 이미지 슬라이드 -->
<script type="text/javascript">
$(document).ready(function(){
	  $('.imagebox').bxSlider({
	  auto: true,
	  autoControls: true
	  });
	});

</script>
</head>

<body>
<div id="wrap">

<!-- ======================== 탑메뉴/검색바 ============================== -->
<header>

	<nav id="main_topNav">
	<ul class = "main_topOut">
		
		<c:choose>
       <c:when test="${empty sessionScope.loginUser}">
       <li><a href="HealerServlet?command=member_login_form"> &nbsp;&nbsp;판매자등록&nbsp;&nbsp;</a></li>		       
       </c:when>
       <c:when test="${sessionScope.loginUser.division == '구매회원' }">
       <li><a href="HealerServlet?command=seller_seller_add1"> &nbsp;&nbsp;판매자등록&nbsp;&nbsp;</a></li>		       
       </c:when>
       <c:when test="${sessionScope.loginUser.division == '판매회원' }">
       <li><a href="HealerServlet?command=seller_enroll_list">&nbsp;&nbsp;판매페이지 ▼&nbsp;</a>
		 <ul class ="main_topIn">
		  <li><a href="HealerServlet?command=seller_product_add_form">상품등록</a></li>
		  <li><a href="HealerServlet?command=seller_enroll_list">등록현황</a></li>
		  <li><a href="HealerServlet?command=seller_cal_request1">정산신청</a></li>
		  <li><a href="HealerServlet?command=seller_statistics">판매실적</a></li>
		  <li><a href="HealerServlet?command=seller_account_infochange1">계좌정보수정</a></li>
		  <li><a href="#">내가쓴글</a></li>
		 </ul></li>		       
       </c:when>   
       <c:when test="${sessionScope.loginUser.division == '관리자' }">
       <li><a href="HealerServlet?command=admin_index"> &nbsp;&nbsp;관리자페이지 ▼&nbsp;</a>
       <ul class ="main_topIn">
       	  <c:choose><c:when test="${sessionScope.loginUser.board == 'TRUE'}">
		  <li><a href="HealerServlet?command=admin_board">게시판관리</a></li>
		  </c:when></c:choose>
		  
		  <c:choose><c:when test="${sessionScope.loginUser.member == 'TRUE'}">
		  <li><a href="HealerServlet?command=admin_member&key=member">회원관리</a></li>
		  </c:when></c:choose>
		  
		  <c:choose><c:when test="${sessionScope.loginUser.calculate == 'TRUE'}">
		  <li><a href="HealerServlet?command=admin_calculate">정산관리</a></li>
		  </c:when></c:choose>
		  
		  <c:choose><c:when test="${sessionScope.loginUser.statistics == 'TRUE'}">
		  <li><a href="HealerServlet?command=admin_statistics">통계관리</a></li>
		  </c:when></c:choose>
		  
		  <c:choose><c:when test="${sessionScope.loginUser.admingrant == 'TRUE'}">
		  <li><a href="HealerServlet?command=admin_staff">관리자설정</a></li>
		  </c:when></c:choose>
		 </ul></li>		       
       </c:when>
       </c:choose>
       
		 <li><a href="HealerServlet?command=cart_index">&nbsp;&nbsp;장바구니&nbsp;</a> | </li>
		 <li><a href="HealerServlet?command=customerCenter_faq_list">&nbsp;&nbsp;고객센터 ▼&nbsp;</a> | 
		 <ul class ="main_topIn">
		 <li><a href="HealerServlet?command=customerCenter_faq_list">자주묻는질문</a></li>
		  <li><a href="HealerServlet?command=customerCenter_notice_list">공지사항</a></li>
		  <li><a href="HealerServlet?command=customerCenter_qna_write_form">1:1문의</a></li>
		  <li><a href="HealerServlet?command=customerCenter_cancel_info">취소환불안내</a></li>
		 </ul></li>
		 
		 <c:choose>
		 <c:when test="${sessionScope.loginUser.division == '구매회원' || sessionScope.loginUser.division == '판매회원'}">
    		<li><a href="HealerServlet?command=mypage_index">&nbsp;&nbsp;마이페이지 ▼&nbsp;</a> | 
		 <ul class ="main_topIn">
		  <li><a href="HealerServlet?command=mypage_index">구매목록</a></li>
		  <li><a href="HealerServlet?command=mypage_cancel_info">취소/환불</a></li>
		  <li><a href="HealerServlet?command=mypage_coupon">할인쿠폰</a></li>
		  <li><a href="HealerServlet?command=mypage_mileage">마일리지</a></li>
		  <li><a href="HealerServlet?command=mypage_infochange1">회원정보수정</a></li>
		  <li><a href="HealerServlet?command=mypage_mycontent">내가쓴글</a></li>
		 </ul></li>
         </c:when>
         <c:when test="${sessionScope.loginUser.division == '사업자회원'}">
    		<li><a href="HealerServlet?command=seller_enroll_list">&nbsp;&nbsp;판매페이지 ▼&nbsp;</a> | 
		 <ul class ="main_topIn">
		  <li><a href="HealerServlet?command=seller_product_add_form">상품등록</a></li>
		  <li><a href="HealerServlet?command=seller_enroll_list">등록현황</a></li>
		  <li><a href="HealerServlet?command=seller_cal_request1">정산신청</a></li>
		  <li><a href="HealerServlet?command=seller_statistics">판매실적</a></li>
		  <li><a href="HealerServlet?command=seller_licensee_infochange1">사업자정보수정</a></li>
		  <li><a href="#">내가쓴글</a></li>
		 </ul></li>
         </c:when>
		</c:choose>
		
		<c:choose>
       <c:when test="${empty sessionScope.loginUser}">
       <li><a href="HealerServlet?command=member_join_form">&nbsp;&nbsp;회원가입&nbsp;&nbsp;</a> | </li>
       <li><a href="HealerServlet?command=member_login_form">&nbsp;&nbsp;로그인&nbsp;&nbsp;</a> | </li>		       
       </c:when>
       <c:otherwise>
       
       <li><a href="HealerServlet?command=member_logout">&nbsp;&nbsp;로그아웃&nbsp;&nbsp;</a> | </li>
       <li>${sessionScope.loginUser.name}님&nbsp;&nbsp; | </li>
       </c:otherwise>       
       </c:choose>

	</ul>
</nav>
<hr color=#dddddd size=0.1px>
<div class="search">
	<div id="logo">
	<a onclick="window.open(this.href,'_self',''); return false;" href="HealerServlet?command=index">
	<img src="/Healer/image/healerlogo.png"></a>
	</div>

	<div id="search_bar">
	<form action="HealerServlet?command=product_search" method="post" name="searchformm">
			<input type="search" name="search" placeholder="검색어를 입력해주세요">
			<img id="search_img" onclick="product_search()" border="0" src="/Healer/image/search.png" width="50" height="40" >	
	</form>
	</div>
</div>
</header>

<!-- <!-- ======================== 메뉴바  ==============================
<nav id="menu">
	<ul class = "out">
		<li><a onclick="window.open(this.href,'_self',''); return false;" href="HealerServlet?command=index">
		홈</a></li>
		<li><a href="HealerServlet?command=product_category&category=01&area=0&orderby=1">예그리나</a>
		 <ul class = "in">
		  <li><a href="HealerServlet?command=product_category&category=0101&area=0&orderby=1">먹거리</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0102&area=0&orderby=1">체험</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0103&area=0&orderby=1">나들이</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0104&area=0&orderby=1">계절</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0105&area=0&orderby=1">민속</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0106&area=0&orderby=1">불꽃축제</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0107&area=0&orderby=1">뮤직</a></li>
		 </ul></li>
		<li><a href="HealerServlet?command=product_category&category=02&area=0&orderby=1">라온제나</a>
		 <ul class= "in">
		  <li><a href="HealerServlet?command=product_category&category=0201&area=0&orderby=1">뮤지컬·연극</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0202&area=0&orderby=1">클래식·콘서트</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0203&area=0&orderby=1">전시·체험·아동</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0204&area=0&orderby=1">스포츠</a></li>
		 </ul></li>
		<li><a href="HealerServlet?command=product_category&category=03&area=0&orderby=1">여우별</a>
		 <ul class ="in">
		  <li><a href="HealerServlet?command=product_category&category=0301&area=0&orderby=1">맛집·카페</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0302&area=0&orderby=1">뷰티</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0303&area=0&orderby=1">건강</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0304&area=0&orderby=1">교육</a></li>
		  <li><a href="HealerServlet?command=product_category&category=0305&area=0&orderby=1">생활서비스</a></li>
		 </ul></li>
	</ul>
</nav>  -->

<!-- ======================== 사이드 장바구니/최근본상품  ============================== -->

<!-- <aside id = "floatmenu">
 <div class = "cart">
  <a href = "HealerServlet?command=cart_index" onfocus="this.blur()">
  <strong id="white"> 장바구니 ▶
  </strong></a>
 </div>
 <div class = "recent"><label><strong>최근 본 상품</strong></label>
  <dd>
   <ul>
		<li><a href="#">
		<img style="width: 80px; height:80px;" src="product_images/TGIF신메뉴Out" /></a></li>
   </ul>
  </dd>
 </div>
</aside> -->


