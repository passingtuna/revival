<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

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
			</script>
</head>
		<body>
<header>
<div class ="font">
    <nav id="main_topNav">
	<ul class = "main_topOut">
	 <c:choose>
		 
    		
		 <ul class ="main_topIn">
		 
		 </ul></li>
 
         <c:when test="${sessionScope.loginUser.division == '사업자회원'}">
    		<li><a href="list.jsp">&nbsp;&nbsp;요청목록 ▼&nbsp;</a> | 
		 <ul class ="main_topIn">
		  <li><a href="register.jsp">가게 등록 요청</a></li>
		  <li><a href="HealerServlet?command=seller_enroll_list">승인</a></li>
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

</div>
</header>