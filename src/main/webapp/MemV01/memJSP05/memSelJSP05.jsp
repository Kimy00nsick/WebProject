<%@page import="java.util.List"%>
<%@page import="MemJSP05.MemDTO"%>
<%@page import="MemJSP05.MemDAO"%>
<%@page import="common.DbSet"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="memCss.css">
    <style>
        #wrapper {
            width: 900px;
            margin: 20px auto;
            text-align: center;
        }

        table {
            width: 900px; 
        }

        .top {
            background-color: gray;
            font-size: 20px;
            font-family: 'Comic Sans Ms';
            color: white;
            height: 40px;
        }

        .col_02 {
            background-color: rgba(255, 255, 255, 0.771);
            font-size: 18px;
            font-family: 'Comic Sans Ms';
            color: gray;
            text-align: center;
            border: none;
        }
        #phoneNum{
            width: 200px;
        }
        #adr{
            width: 300px;
        }
        #name{
            width: 80px;
        }
        #phone{
        width: 200px;
        }
        #addr{
        width: 300px;
        }
        #name02{
        width: 80px;
        }
        #result{
        overflow: auto;
        color : white;
        }
    </style>
</head>
<body>
    <div id="wrapper">
     <%@ include file = "memTop.jspf" %>
    <section id="section">
        <table>
            <tr>
                <th colspan="5" class="top">Select</th>
            </tr>
            <tr class="col_02">
                <td>ID</td>
                <td>E-mail</td>
                <td id="name">Name</td>
                <td id="phoneNum">PhoneNumber</td>
                <td id="adr">Address</td>
            </tr>
        </table>
        <div id="result">
        <table>
        <%
	MemDTO memDTO = new MemDTO();
	MemDAO memDAO = new MemDAO();
	List<MemDTO> memDtoL = memDAO.memSel();
	for(int i = 0; i< memDtoL.size();i++){
		memDTO = memDtoL.get(i);
%>
        	<tr>
        	<td><%=memDTO.getvId()%></td>
        	<td><%=memDTO.getvMail()%></td>
        	<td id = "name02"><%=memDTO.getvName()%></td>
        	<td id = "phone"><%=memDTO.getvPhone()%></td>
        	<td id = "addr"><%=memDTO.getvAddr()%></td>
        	</tr>
        	<%} %>
        </table>
        </div>
        </section>
        <%@ include file = "memBottom.jspf" %>
    </div>
 </body>
</html>