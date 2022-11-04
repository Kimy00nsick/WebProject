<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page import = "MemJSP05.MemDAO" %>
<%@ page import = "MemJSP05.MemDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%   
    String msg = "";
    int i = 0;
    String memParam[] = new String[3];
    Enumeration<String> vFeild = request.getParameterNames();
    while(vFeild.hasMoreElements()){
    	memParam[i] = request.getParameter(vFeild.nextElement());
    	i++;
    }
    /*
    String vName = request.getParameter("mem_name");
    String vId = request.getParameter("mem_id");
    String vPwd = request.getParameter("mem_pwd");
    */
      
    MemDAO memDAO = new MemDAO();
    MemDTO memDTO = new MemDTO(memParam[1],memParam[2],memParam[0]);
    int su = memDAO.memDel(memDTO);
    if(su != 0){
    	System.out.println(memParam[1]+"님 회원탈퇴 성공");
    	msg = memParam[1]+"님 회원탈퇴 성공";
    	response.sendRedirect("./msgChk.jsp?msg="+ URLEncoder.encode(msg, "UTF-8"));
    }
    %>


 <link rel="stylesheet" href="memCommon.css">
  <div id="wrapper">
  <%@ include file = "memTop.jspf" %>
  <section id="section">
 <table>
                <tr>
                    <th colspan="2" class="top">Delete</th>
                </tr>
                <tr class="col_01">
                    <td class="row_right">
                        <input type=text class="text_field" name="mem_name" value="회원탈퇴 성공" disabled>
                    </td>
                </tr>
            </table>
            </section>
            <%@ include file = "memBottom.jspf" %>
            </div>
