<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id="Orange";
	String hobby="영화보기";
%>
	
	포위당하는 페이지 forwardTest.jsp로 절대 표시 되지 않는다...<br>
	
	<jsp:forward page="forwardToTest2.jsp">
		<jsp:param value="<%=id %>"			 name="id"/>
		<jsp:param value="<%=hobby %>"	 name="hobby"/>
	</jsp:forward>
	
	나머지부분도 표시되지 않는다...<br>