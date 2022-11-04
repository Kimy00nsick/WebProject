<%@ page import = "MemJSP07ForwardBean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="memDTO" class="MemJSP07ForwardBean.MemDTO"/>
	<jsp:setProperty name = "memDTO" property = "vId" value = "Orange"/>
	<jsp:getProperty name = "memDTO" property = "vId"/>
	<jsp:setProperty name = "memDTO" property = "vName" value = "오렌지"/>
	<jsp:getProperty name = "memDTO" property = "vName"/>
	<jsp:setProperty name = "memDTO" property = "vPwd" value = "1234"/>
	<jsp:getProperty name = "memDTO" property = "vPwd"/>