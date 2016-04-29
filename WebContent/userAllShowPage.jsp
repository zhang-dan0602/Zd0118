<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 <%@page import="nuc.sw.servlet.ShowInfoServlet" %>
  <%@ page   import="java.util.*" %>
  <%@ page import="nuc.sw.bean.zd0118member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示个人信息</title>
<style>
#main{
 width:880px;
 height:440px;
}
#left{
width:440px;
height:440px;
float:left;
}
#right{
width:440px;
height:440px;
float:right;
}
</style>
</head>
<body>
   <jsp:useBean id="m"  class="nuc.sw.bean.zd0118member"></jsp:useBean>
   <jsp:useBean id="mDao"  class="nuc.sw.dao.Zd0118memberDao"></jsp:useBean>
   <div id="main">
     <div id="leftbox">
    <% 
    List<zd0118member> mlist=new ArrayList<zd0118member>();
    mlist=mDao.findAll();
	//用表格显示查看的数据
	 %>
 <table border="1">
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
   <% 
   //System.out.println(mlist.size());
   for(int i=0;i<mlist.size();i++){
	 m=mlist.get(i);
	 %>
      <tr>
     <td><%=m.getUsername()%></td>
     <td><%=m.getPw1()%></td>
     <td><%=m.getSex()%></td>
     <td><%=m.getPhone()%></td>
     <td><%=m.getEmail()%></td>
     <td><%=m.getHobby1()%></td>
     <td><%=m.getHobby2()%></td>
     <td><%=m.getHobby3()%></td>
     <td><%=m.getDept()%></td>
     <td><%=m.getNote()%></td>
   </tr>
      <%
      }
    %>
      </table>
      </div>
      <div id="rightbox">
      <center>
        <form name="formlogin"  method="post"  action="userShowPage.jsp">
           <table width="300" height="100" border="1" align="center">
           <caption>继续进行其他全部操作吧！</caption>
             <tr>
                  <td><input name="Submit" type="submit" value="提交"></td>
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