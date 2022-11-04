<%@ page import = "MemJSP02.MemDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%    
    String vName = request.getParameter("mem_name");
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");
      
    MemDAO memDAO = new MemDAO();
    int su = memDAO.memDel(vName,vId,vPwd);
    if(su != 0){
    	System.out.println(vId+"님 회원탈퇴 성공");
    }
    %>
<%=vName+"\n"+vId+"\n"+vPwd%>