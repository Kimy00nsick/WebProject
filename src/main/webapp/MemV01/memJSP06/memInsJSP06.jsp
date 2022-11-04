<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="memCommon.css">
  <link rel="stylesheet" href="memCss.css">
</head>

<body>
    <div id="wrapper">
    <%@ include file = "memTop.jspf" %>
    <section id="section">
        <form action="memInsJSP06Pro.jsp">
            <table>
                <tr>
                    <th colspan="2" class="top">Insert</th>
                </tr>
                <tr class="col_01">
                    <td class="row_left">Name</td>
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_name">
                    </td>
                </tr>
                <tr class="col_02">
                    <td class="row_left">Id</td>
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_id" value ="<%=vMsg%>">
                    </td>
                </tr>
                <tr class="col_01">
                    <td class="row_left">Password</td>
                    <td class="row_right">
                        <input type=password class="text_field" name="mem_pwd">
                    </td>
                </tr>
                <tr class="col_02">
                    <td class="row_left">E-mail</td>
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_mail">
                    </td>
                </tr>
                <tr class="col_01">
                    <td class="row_left">PhoneNumber</td>
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_phone">
                    </td>
                </tr>
                <tr class="col_02">
                    <td class="row_left">Adress</td>
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_addr">
                    </td>
                </tr>
                <tr class="bottom">
                    <td colspan="2"><input type="submit" value="Insert" class="btn"> <input type="reset" value="Cancle"
                            class="btn"></td>
                </tr>
            </table>
        </form>
        </section>
        <jsp:include page="memBottom.jsp" flush="true"/>
    </div>
</body>
</html>