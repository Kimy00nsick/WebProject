<%@ page import = "MemJSP07ForwardBean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="memDTO" class="MemJSP07ForwardBean.MemDTO"/>
	<jsp:setProperty name = "memDTO" property = "*"/>
	<jsp:getProperty name = "memDTO" property = "mem_id"/>
	