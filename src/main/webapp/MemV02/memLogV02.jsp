<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="memCommon.css">
    <link rel="stylesheet" href="memCss.css">
</head>
<%
String vUrl = request.getContextPath();
%>
<body>

    <div id="wrapper">
    <jsp:include page="memTop.jsp" flush="true"/>
    <section id="section">
        <form action="<%=vUrl%>/ControllerMemV02.do">
            <table>
            <input type="hidden" name="category" value="frmLog">
                <tr>
                    <th colspan="2" class="top">Login</th>
                </tr>
                <tr class="col_01">
                    <td class="row_left">Id</td>
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_id">
                    </td>
                </tr>
                <tr class="col_02">
                    <td class="row_left">Password</td>
                    <td class="row_right">
                        <input type=password class="text_field" name="mem_pwd">
                    </td>
                </tr>
                <tr class="col_01">
                    <td class="row_left">Massage</td>
                    <td class="row_right">
                        <input type=text class="text_field" disabled>
                    </td>
                </tr>
                <tr class="bottom">
                    <td colspan="2"><input type="submit" value="Login" class="btn"> <input type="reset" value="Cancle"
                            class="btn"></td>
                </tr>
            </table>
        </form>
        </section>
              <jsp:include page="memBottom.jsp" flush="true"/>
    </div>
</body>
</html>