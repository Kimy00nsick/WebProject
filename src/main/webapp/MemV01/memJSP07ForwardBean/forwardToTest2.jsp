<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id 		= request.getParameter("id");
	String hobby = request.getParameter("hobby");
%>
	(이건보임)포위당하는 페이지 forwardToTest2.jsp 입니다.<br><br>
	
	<b><%=id %></b>님의<br>
	취미는 <b><%=hobby %></b>입니다.