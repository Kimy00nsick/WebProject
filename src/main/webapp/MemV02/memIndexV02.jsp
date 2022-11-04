<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <%
String vUrl = request.getContextPath();
%>
  <meta charset="UTF-8">
    <title></title>
 <link rel="stylesheet" href="<%=vUrl %>/MemV02/memCss.css">
</head>

<body>
<%-- <%
String vUrl = request.getContextPath();
out.print(vUrl);
%> --%>
    <div id="wrapper">
        <jsp:include page="memTop.jsp" flush="true"/>
    <section id= "section">
       <img src="./img/main.png">
    </section>
    <jsp:include page="memBottom.jsp" flush="true"/>
</div>

</body>
</html>