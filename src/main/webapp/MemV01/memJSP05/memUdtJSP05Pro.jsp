<%@page import="java.net.URLEncoder"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "MemJSP05.MemDAO" %>
<%@ page import = "MemJSP05.MemDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String msg = "";
    int idx = 0;
    String memParam[] = new String[6];
    Enumeration<String> vFields = request.getParameterNames();
    while(vFields.hasMoreElements()){
    	memParam[idx] = request.getParameter(vFields.nextElement());
    	idx++;
    }
    
    MemDTO memDTO = new MemDTO(memParam[1],memParam[2],memParam[0],memParam[3],memParam[4],memParam[5]);
    MemDAO memDAO = new MemDAO();
    int su = memDAO.memUpd(memDTO);
    if(su != 0){
    	System.out.println(memParam[1]+"님 회원수정 성공");
    	msg = memParam[1]+"님 회원수정 성공";
     	response.sendRedirect("./msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));
    }
    %>

 <link rel="stylesheet" href="memCommon.css">
 <link rel="stylesheet" href="memCss.css">
  <div id="wrapper">
   <%@ include file = "memTop.jspf" %>
    <section id="section">
 <table>
                <tr>
                    <th colspan="2" class="top">Update</th>
                </tr>
                <tr class="col_01">
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_name" value="회원수정 성공" disabled>
                    </td>
                </tr>
            </table>
            </section>
            <%@ include file = "memBottom.jspf" %>
            </div>

