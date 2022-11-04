<%@ page import = "MemJSP02.MemDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");

    MemDAO memDAO = new MemDAO();
    boolean rs = memDAO.memLog(vId,vPwd);
    if(rs == true){
    	System.out.println(vId+"님 로그인 성공");
    }
    
    %>
<%=vId+"\n"+vPwd%> 