<%@ page import = "MemJSP03.MemDAO" %>
<%@ page import = "MemJSP03.MemDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    String vName = request.getParameter("mem_name");
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");
    String vMail = request.getParameter("mem_mail");
    String vPhone = request.getParameter("mem_phone");
    String vAddr = request.getParameter("mem_addr");
    
    MemDTO memDTO = new MemDTO(vId,vPwd,vName,vMail,vPhone,vAddr);
    MemDAO memDAO = new MemDAO();
    int su = memDAO.memIns(memDTO);
    if(su != 0){
    	System.out.println(vId+"님 회원가입 성공");
    }
    
    
    %>
    <link rel="stylesheet" href="memCommon.css">
  <div id="wrapper">
 <table>
                <tr>
                    <th colspan="2" class="top">Insert</th>
                </tr>
                <tr class="col_01">
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_name" value="회원가입 성공" disabled>
                    </td>
                </tr>
            </table>
            </div>

            