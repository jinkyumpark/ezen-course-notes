<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<article>
	<h1>Login</h1>
	<form method="post" action="shop.do" name="loginFrm">
		<input type="hidden" name="command" value="login">
		
		<fieldSet>
			<legend></legend>
				<label>User ID</label><input name="id" type="text"><br>
				<label>Password</label><input name="pwd" type="password"><br>
		</fieldSet>
		<div id="buttons">
			<input type="submit" value="로그인" class="submit" onclick="retunr loginCheck();">
			<input type="button" value="회원가입" class="cancel" onclick="location.href='shop.do?command=contract'">
			<input type="button" value="아이디 비밀번호 찾기" class="submit" onclick="find_id()">
		</div>
		<div>&nbsp;&nbsp;&nbsp;${message }</div>	
	</form>
</article>

<%@ include file="../footer.jsp" %>