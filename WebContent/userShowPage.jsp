<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%@page import="nuc.sw.servlet.ShowInfoServlet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户操作</title>
<style>
#main{
 width:880px;
 height:680px;
}
#left{
width:440px;
height:680px;
float:left;
}
#right{
width:440px;
height:680px;
float:right;
}
</style>
</head>
<body>
   <div id="main">
     <div id="leftbox">
     <center>
     <table border="1">
     <span>${requestScope.yesyes}</span>
   <tr>
     <td>用户名</td>
     <td>密码</td>
     <td>性别</td>
     <td>电话</td>
     <td>邮箱</td>
     <td>拟报社团一</td>
     <td>拟报社团二</td>
     <td>拟报社团三</td>
     <td>学院</td>
     <td>备注</td>
   </tr>
   <tr>
     <td>${requestScope.username}</td>
     <td>${requestScope.pw1}</td>
     <td>${requestScope.sex}</td>
     <td>${requestScope.phone}</td>
     <td>${requestScope.email}</td>
     <td>${requestScope.hobby1}</td>
     <td>${requestScope.hobby2}</td>
     <td>${requestScope.hobby3}</td>
     <td>${requestScope.dept}</td>
     <td>${requestScope.note}</td>
   </tr>
  </table>
  </center>

      </div>
      <div id="rightbox">
      <center>
        <form name="formlogin"  method="post"  action="ShowInfoServlet">
           <table width="300" height="100" border="1" align="center">
           <caption>显示个人信息</caption>
             <tr>
                  <td><input name="Submit" type="submit" value="提交"></td>
		          <td><input name="Reset" type="reset" value="重置"></td>
	        </tr>
	    </table>
	  </form>
	  <br/>
	  <form name="formlogin"  method="post"  action="ShowAllInfoServlet">
           <table width="300" height="100" border="1" align="center">
           <caption>显示全部信息</caption>
             <tr>
                  <td><input name="Submit" type="submit" value="提交"></td>
		          <td><input name="Reset" type="reset" value="重置"></td>
	        </tr>
	    </table>
	  </form>
	  <br/>
	  <span>${requestScope.yesyes}</span>
	  <form name="formlogin"  method="post"  action="updateInfoPage.jsp">
           <table width="300" height="100" border="1" align="center">
           <caption>修改个人信息</caption>
             <tr>
                  <td><input name="Submit" type="submit" value="提交"></td>
		          <td><input name="Reset" type="reset" value="重置"></td>
	        </tr>
	    </table>
	  </form>
	  <br/>
	  <span>${requestScope.yes}</span>
	  <form name="formlogin"  method="post"  action="DeleteInfoServlet">
           <table width="300" height="100" border="1" align="center">
           <caption>删除个人信息</caption>
             <tr>
                  <td><input name="Submit" type="submit" value="提交"   onclick="return confirm('你确定要删除吗？')"></td>
		          <td><input name="Reset" type="reset" value="重置"></td>
	        </tr>
	    </table>
	  </form>
	  <form name="formlogin"  method="post"  action="zd0118member_list.jsp">
           <table width="300" height="100" border="1" align="center">
           <caption>分页显示信息</caption>
             <tr>
                  <td><input name="Submit" type="submit" value="提交" ></td>
		          <td><input name="Reset" type="reset" value="重置"></td>
	        </tr>
	    </table>
	  </form>
	  </center>
	  </div>
   </div>
   <%@ include file="tail.jsp" %>
</body>
</html>