<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="nuc.sw.bean.LoginBean" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>登录</title>
  </head>
  <body>
  <span><font color="red">${requestScope.error}</font></span>
     <form name="formlogin"  method="post"  action="LoginServlet">
     <table width="500" height="300" border="1" align="center">
      <caption>用户登录</caption>
      <tr>
	     <td> 用户名：</td>
	    <td><input name="userName"  type="text" value=""></td>
      </tr>
      <tr>
	             <td> 密码：</td>
	            <td><input name="password"  type="password" value=""></td>
      </tr>
      <tr>
		<td><input name="Submit" type="submit" value="提交"></td>
		<td><input name="Reset" type="reset" value="重置"></td>
	</tr>
     </table>
        </form>
  </body>
</html>