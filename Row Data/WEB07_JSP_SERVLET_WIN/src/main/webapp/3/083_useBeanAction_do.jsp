<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("userid");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String nickname = request.getParameter("nickname");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
%>

<jsp:useBean id="member" class="com.ezen.dto.MemberBean" scope="request"/>

<jsp:setProperty name="member" property="name" value="<%=name %>"/>
<jsp:setProperty name="member" property="userid" value="<%=id %>"/>
<jsp:setProperty name="member" property="pwd" value="<%=pwd %>"/>
<jsp:setProperty name="member" property="nickname" value="<%=nickname %>"/>
<jsp:setProperty name="member" property="phone" value="<%=phone %>"/>
<jsp:setProperty name="member" property="email" value="<%=email %>"/>

<%
	RequestDispatcher dp = request.getRequestDispatcher("084_useBeanAction.jsp");
	dp.forward(request, response);
%>
