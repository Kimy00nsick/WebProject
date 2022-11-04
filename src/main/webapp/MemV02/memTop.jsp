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
<script defer type="text/javascript">
let a="";
function clickMenu(a){

 	document.getElementById("category").value = a;
	//alert(document.getElementById("category").value)
	document.getElementById("myform").submit();
 	
}
</script>


<form method ="post" action ="<%=vUrl %>/ControllerMemV02.do" id="myform">
	<input type="hidden" id="category" name = "category" value="">
</form>


        <header>
            <nav>
                <ul>
                    <li><span onclick="clickMenu('menuMain')">Main</a></li>
                    <li><span onclick="clickMenu('menuLog')">Login</a></li>
                    <li><span onclick="clickMenu('menuIns')">Insert</a></li>
                    <li><span onclick="clickMenu('menuUpd')">Update</a></li>
                    <li><span onclick="clickMenu('menuDel')">Delete</a></li>
                    <li><span onclick="clickMenu('menuSel')">Select</span></li>
                </ul>
            </nav>
        </header>
        <style>span{
        color: white;
        }</style>
</body>
</html>
