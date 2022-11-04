<%@page import="java.io.PrintWriter"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import = "MemJSP07ForwardBean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="memDTO" class="MemJSP07ForwardBean.MemDTO"/>
 <jsp:useBean id="memDAO" class="MemJSP07ForwardBean.MemDAO"/>
	<jsp:setProperty name = "memDTO" property = "*"/>
<%
String msg = "";
int rs = memDAO.memLog(memDTO);
if(rs == 1){
	System.out.println(memDTO.getMem_id()+"님 로그인 성공");
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인 성공')");
	script.println("</script>");
%>
<div id="wrapper">
    <%@ include file = "memTop.jspf" %>
<section id= "section">
   <img src="./img/main.png">
</section>
<%@ include file = "memBottom.jspf" %>
</div>
        <%}else if(rs == 0){
        	msg = "비밀번호 불일치";
        	response.sendRedirect("./msgChk.jsp?msg="+URLEncoder.encode(msg, "UTF-8"));
    
        }else if(rs == -1){
        	msg = "존재하지 않는 아이디";
        	response.sendRedirect("./msgChk.jsp?msg="+URLEncoder.encode(msg, "UTF-8"));
        }
%>

	