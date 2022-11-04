<%@ page import = "MemJSP04.MemDAO" %>
<%@ page import = "MemJSP04.MemDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="memCommon.css">
 <link rel="stylesheet" href="memCss.css">
    <%
    
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");

    MemDAO memDAO = new MemDAO();
    MemDTO memDTO = new MemDTO(vId,vPwd);
    int rs = memDAO.memLog(memDTO);
    if(rs == 1){
    	System.out.println(vId+"님 로그인 성공");
    
    %>

  <div id="wrapper">
  <%@ include file = "memTop.jspf" %>
    <section id="section">
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
            </section>
            <%@ include file = "memBottom.jspf" %>
            </div>
            <%}else if(rs == 0){
            	%>
            	<div id="wrapper">
            	 <%@ include file = "memTop.jspf" %>
    <section id="section">
        <form action="memLoginJSP04Pro.jsp">
            <table>
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
                        <input type=text class="text_field" value = "비밀번호 불일치" disabled>
                    </td>
                </tr>
                <tr class="bottom">
                    <td colspan="2"><input type="submit" value="Login" class="btn"> <input type="reset" value="Cancle"
                            class="btn"></td>
                </tr>
            </table>
        </form>
        </section>
              <%@ include file = "memBottom.jspf" %>
              </div>
            	<%
            }else if(rs == -1){
            	%>
            	<div id="wrapper">
           	 <%@ include file = "memTop.jspf" %>
   <section id="section">
       <form action="memLoginJSP04Pro.jsp">
           <table>
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
                       <input type=text class="text_field" value = "존재하지 않는 아이디" disabled>
                   </td>
               </tr>
               <tr class="bottom">
                   <td colspan="2"><input type="submit" value="Login" class="btn"> <input type="reset" value="Cancle"
                           class="btn"></td>
               </tr>
           </table>
       </form>
       </section>
             <%@ include file = "memBottom.jspf" %>
             </div>
           	<%
            }
    %>
