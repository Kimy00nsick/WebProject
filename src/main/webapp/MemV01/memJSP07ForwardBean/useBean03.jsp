<%@ page import = "MemJSP07ForwardBean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="memDTO" class="MemJSP07ForwardBean.MemDTO"/>
	<jsp:setProperty name = "memDTO" property = "mem_name"/>
	<jsp:setProperty name = "memDTO" property = "mem_id"/>
	<jsp:setProperty name = "memDTO" property = "mem_pwd"/>
	<jsp:setProperty name = "memDTO" property = "mem_mail"/>
	<jsp:setProperty name = "memDTO" property = "mem_phone"/>
	<jsp:setProperty name = "memDTO" property = "mem_addr"/>
	<jsp:getProperty name = "memDTO" property = "mem_name"/>
	<jsp:getProperty name = "memDTO" property = "mem_id"/>
	<jsp:getProperty name = "memDTO" property = "mem_pwd"/>
	<jsp:getProperty name = "memDTO" property = "mem_mail"/>
	<jsp:getProperty name = "memDTO" property = "mem_phone"/>
	<jsp:getProperty name = "memDTO" property = "mem_addr"/>
	
