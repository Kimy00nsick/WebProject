<%@page import="java.net.URLEncoder"%>
<%@ page import = "MemJSP07ForwardBean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="memDTO" class="MemJSP07ForwardBean.MemDTO"/>
 <jsp:useBean id="memDAO" class="MemJSP07ForwardBean.MemDAO"/>
	<jsp:setProperty name = "memDTO" property = "*"/>
<%
String msg = "";
int su = memDAO.memIns(memDTO);
if(su != 0){
	msg = memDTO.getMem_id()+"님 회원삭제 성공";
}else{
	msg = "회원삭제 오류 확인!!";
}
response.sendRedirect("./msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));

%>

	