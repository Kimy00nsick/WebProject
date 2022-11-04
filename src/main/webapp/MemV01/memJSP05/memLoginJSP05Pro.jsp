<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Enumeration"%>
<%@ page import = "MemJSP05.MemDAO" %>
<%@ page import = "MemJSP05.MemDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="memCommon.css">
 <link rel="stylesheet" href="memCss.css">
    <%
    String msg ="";
    int idx = 0;
    String memParam[] = new String[2];
    Enumeration<String> vFields = request.getParameterNames();
    while(vFields.hasMoreElements()){
    	memParam[idx] = request.getParameter(vFields.nextElement());
    	idx++;
    }
    /*
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");
    */

    MemDAO memDAO = new MemDAO();
    MemDTO memDTO = new MemDTO(memParam[0],memParam[1]);
    int rs = memDAO.memLog(memDTO);
    if(rs == 1){
    	System.out.println(memParam[0]+"님 로그인 성공");
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
