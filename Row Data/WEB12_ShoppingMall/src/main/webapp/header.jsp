<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/shopping.css" rel="stylesheet">
<script src="member/member.js"></script>
<script src="mypage/mypage.js"></script>
</head>

<div id="wrap">
	<header>
	
		<div id="logo">
			<a href="shop.do?command=index">
				<img src="images/logo.png" width="180" height="100"/>
			</a>
		</div>
		
		<nav id="top_menu">
			<ul>
				<c:choose>
					<c:when test="${empty loginUser }">
						<li><a href="shop.do?command=loginForm">LOGIN</a></li>
						<li><a href="shop.do?command=contract">JOIN</a></li>
					</c:when>
					<c:otherwise>
						<li>${loginUser.name }(${loginUser.id })</li>
						<li><a href="shop.do?command=editForm&id=${loginUser.id } }">정보수정</a></li>
						<li><a href="shop.do?command=logout">LOGOUT</a>
					</c:otherwise>
				</c:choose>
				<li><a href="shop.do?command=cartList">CART</a></li>
				<li><a href="shop.do?command=myPage">MY PAGE</a></li>
				<li><a href="shop.do?command=qnaList">Q&amp;A</a></li>
			</ul>
		</nav>
		
		<nav id="category_menu">
			<ul>
				<li><a href="shop.do?command=category&kind=1">Heels</a></li>
				<li><a href="shop.do?command=category&kind=2">Boots</a></li>
				<li><a href="shop.do?command=category&kind=3">Sandals</a></li>
				<li><a href="shop.do?command=category&kind=4">Sneakers</a></li>
				<li><a href="shop.do?command=category&kind=5">Sleeper</a></li>
				<li><a href="shop.do?command=category&kind=6">On Sale</a></li>
			</ul>
		</nav>
		
	</header>
	