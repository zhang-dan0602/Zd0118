<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
          <%@ page import="nuc.sw.dao.Zd0118memberDao" %>
    <%@ page import="nuc.sw.bean.zd0118member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
</head>
<body>

   <jsp:useBean id="m"  class="nuc.sw.bean.zd0118member"></jsp:useBean>
   <jsp:useBean id="mDao"  class="nuc.sw.dao.Zd0118memberDao"></jsp:useBean>
    <% 
    m=mDao.findByUsername((String)session.getAttribute("username"));
    %>
    <form name="formregist" method="post" action="UpdateInfoServlet" >
    <table width="500" height="300" border="1" align="center">
      <caption>用户注册</caption>
      <tr>
	<td> 用户名：</td>
	<td><input name="userName" type="text" value=<%=m.getUsername()%> readonly></td>
      </tr>
      <tr>
	<td> 密码：</td>
	<td><input name="password" type="password" value=<%=m.getPw1()%>></td>
      </tr>
      <tr>
	<td> 确认密码：</td>
	<td><input name="pw2" type="password"value=""></td>
      </tr>
      <tr>
	<td> 性别：</td>
	<td><input name="sex" type="radio" id="sex" value="男"checked >男&nbsp;
            <input name="sex" type="radio" id="sex" value="女">女</td>
      </tr>
      <tr>
	<td>电话号码：</td>
	<td><input name="phone" type="text" value=<%=m.getPhone()%>></td>
      </tr>
      <tr>
	<td> 邮箱：</td>
	<td><input name="email" type="text" value=<%=m.getEmail()%>></td>
      </tr>
       <tr>
	<td> 兴趣:</td>
	<td><input name="hobby1" type="checkbox" value="羽毛球">
		羽毛球&nbsp;
	     <input name="hobby2" type="checkbox" value="乒乓球">
		乒乓球&nbsp;
	     <input name="hobby3" type="checkbox" value="篮球">
		篮球</td>
      </tr>
       <tr>
	<td> 学院:</td>
	<td><select name="dept">
		<option value="软件学院">软件学院</option>
		<option value="计算机学院">计算机学院</option>
		<option value="艺术学院">艺术学院</option>
 	     </select></td>
      </tr>
      <tr>
	<td> 备注:</td>
	<td><textarea cols="55" rows="10" name="note" wrap="hard"><%=m.getNote()%>
	     </textarea></td>
      </tr>
        <tr>
		<td><input name="Submit" type="submit" value="提交"></td>
		<td><input name="Reset" type="reset" value="重置"></td>
	</tr>  
    </table>
    </form>
  

</body>
</html>