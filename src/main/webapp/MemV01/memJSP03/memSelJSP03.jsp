<%@page import="common.DbSet"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
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
<%
	Connection conn;
	PreparedStatement pstmt;
	int num;
	ResultSet rs;
	
	conn = DbSet.getConnection();
	String sql = "SELECT * FROM MEMBERT01";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
%>
<body>
    <div id="wrapper">
        <table>
            <tr>
                <th colspan="5" class="top">Select</th>
            </tr>
            <tr class="col_02">
                <td>ID</td>
                <td>E-mai</td>
                <td id="name">Name</td>
                <td id="phoneNum">PhoneNumber</td>
                <td id="adr">Address</td>
            </tr>
        </table>
        <div id="result">
        <table>
        <%
        while(rs.next())
        {
        	String vId = rs.getString("mem_id");
        	String vPwd = rs.getString("mem_pwd");
        	String vName = rs.getString("mem_name");
        	String vMail = rs.getString("mem_email");
        	String vPhone = rs.getString("mem_phone");
        	String vAddr = rs.getString("mem_addr");
        	%>
        	<tr>
        	<td><%=vId%></td>
        	<td><%=vMail%></td>
        	<td id = "name02"><%=vName%></td>
        	<td id = "phone"><%=vPhone%></td>
        	<td id = "addr"><%=vAddr%></td>
        	</tr>
        	<%
        }
        %>
        </table>
        </div>
    </div>
 </body>
</html>