<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>회원가입</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/signup.css">
	<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
</head>
<body>
	<header>
		<div id="logo">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="로고"> <a href="${pageContext.request.contextPath}/">부동산 플랜</a>
		</div>
		<nav id="main-nav">
			<ul>
				<li><a href="#">실시간 거래</a></li>
				<li><a href="#">메뉴</a></li>
				<li><a href="#">메뉴</a></li>
				<li><a href="${pageContext.request.contextPath}/board/boardList">문의하기</a></li>
			</ul>
		</nav>
		<nav id="member">
			<ul>
				<c:if test="${empty loginEmail}">
					<li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
					<li><a href="${pageContext.request.contextPath}/signup">회원가입</a></li>
				</c:if>
				<c:if test="${not empty loginEmail}">
					<li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
					<li><a href="${pageContext.request.contextPath}/member/mypage">마이페이지</a></li>
				</c:if>
			</ul>
		</nav>
	</header>
	<img id="welcome" src="${pageContext.request.contextPath}/resources/images/welcome.JPG" alt="welcome">
    <div id="title">회원가입 방식을 선택해주세요</div>
    <button id="email-signup"><img class="login-img" src="${pageContext.request.contextPath}/resources/images/signup.JPG" alt="naver">간편 아이디로 회원가입</button><br>
    <button id="naver-signup"><img class="login-img" src="${pageContext.request.contextPath}/resources/images/naver.JPG" alt="naver"><div>네이버로 회원가입</div></button><br>
    <button id="kakao-signup"><img class="login-img" src="${pageContext.request.contextPath}/resources/images/kakao.jpg" alt="kakao"><div>카카오톡으로 회원가입</div></button><br>
    <button id="google-signup"><img class="login-img" src="${pageContext.request.contextPath}/resources/images/google.JPG" alt="google"><div>구글로 회원가입</div></button>
</body>
</html>