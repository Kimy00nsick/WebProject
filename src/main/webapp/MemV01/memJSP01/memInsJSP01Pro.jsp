<%@ page import = "MemJSP01.MemDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String vName = request.getParameter("mem_name");
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");
    String vMail = request.getParameter("mem_mail");
    String vPhone = request.getParameter("mem_phone");
    String vAddr = request.getParameter("mem_addr");
    
    MemDAO memDAO = new MemDAO();
    int su = memDAO.memIns(vId,vPwd,vName,vMail,vPhone,vAddr);
    if(su != 0){
    	System.out.println(vId+"님 회원가입 성공");
    }
    
    
    %>
<%=vName+"\n"+vId+"\n"+vPwd+"\n"+vMail+"\n"+vPhone+"\n"+vAddr%>