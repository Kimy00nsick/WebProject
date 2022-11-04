<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");

	String[] str = request.getParameterValues("ckb");
	out.print("<b>##사용중인 프로그램 : </b>");
	out.print(str.length+"개");
	for(int i =0;i<str.length;i++){
		out.print(str[i]+"\t");
	}
	String str02 = request.getParameter("op");
	out.print("<br><b>##사용중인 운영체제 : </b>"+str02);
	String str03 = request.getParameter("hdw");
	out.print("<br><b>##사용중인 하드웨어 : </b>"+str03);
	String str04 = request.getParameter("tel");
	out.print("<br><b>##사용중인 통신회사 : </b>"+str03);
	
	
%>
</head>
<body>

</body>
</html>