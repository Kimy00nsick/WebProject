<%@ page import = "MemJSP03.MemDAO" %>
<%@ page import = "MemJSP03.MemDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");

    MemDAO memDAO = new MemDAO();
    MemDTO memDTO = new MemDTO(vId,vPwd);
    boolean rs = memDAO.memLog(memDTO);
    if(rs == true){
    	System.out.println(vId+"님 로그인 성공");
    }
    
    %>

 <link rel="stylesheet" href="memCommon.css">
  <div id="wrapper">
 <table>
                <tr>
                    <th colspan="2" class="top">Login</th>
                </tr>
                <tr class="col_01">
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_name" value="로그인 성공" disabled>
                    </td>
                </tr>
            </table>
            </div>
