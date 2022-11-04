<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="memCommon.css">
    <link rel="stylesheet" href="memCss.css">
<style>
#messageBox{
display: flex;
flex-direction: column;
width: 400px;
height: 300px;
margin: 0 auto;
}
#msgTitle{
background-color: gray;
color: white;
width: 400px;
height: 50px;
text-align: center;
border-radius: 10px;
margin-top: 100px;
}
#msgResult{
color: black;
width: 400px;
height: 100px;
text-align: center;
background-color: white;
border-radius: 10px;
padding-top: 60px
}
</style>
<title>Insert title here</title>
<%
request.setCharacterEncoding("UTF-8");
String vMsg = request.getParameter("msg");
if(vMsg == null){
	vMsg = "Message Chk";
}
%>
</head>
<body>
  <div id="wrapper">
    <jsp:include page="memTop.jsp" flush="true"/>
     <section id="section">
     <div id = "messageBox"><div id = "msgTitle">Message</div><div id ="msgResult"><%=vMsg%></div></div>
     </section>
     <jsp:include page="memBottom.jsp" flush="true"/>
     </div>
</body>
</html>