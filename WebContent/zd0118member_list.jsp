<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分页查询</title>
</head>
<body>
<%
         request.setCharacterEncoding("UTF-8");
        //加载驱动
        Class.forName("org.gjt.mm.mysql.Driver");
        //获取连接
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/zd0118","root","123456");
    	String sql="select username,pw1,sex,phone,email,hobby1,hobby2,hobby3,dept,note from zd0118member";
        PreparedStatement ps=conn.prepareStatement(sql);
        ResultSet rs=ps.executeQuery();
   %>
        <table width="80%" border=1 cellspacing="0" align="center">
        <tr>
        <td>用户名</td>
        <td>密码</td>
        <td>性别</td>
        <td>电话</td>
        <td>邮箱</td>
        <td>爱好1</td>
        <td>爱好2</td>
        <td>爱好3</td>
        <td>学院</td>
        <td>备注</td>
        </tr>
      
        <%
        String str=(String)request.getParameter("page");
        if(str==null){
        	str="0";
        }
        int pagesize=2;//页面大小
        rs.last();
        int recordCount=rs.getRow();//总行数
        int maxPage=0;
        maxPage=(recordCount % pagesize==0)?(recordCount/pagesize):(recordCount/pagesize+1);//总页数
        int currentPage=Integer.parseInt(str);
        if(currentPage<1){//处理特殊当前页号
        	currentPage=1;
        }else{
        	if(currentPage>maxPage){
        		currentPage=maxPage;
        	}
        }
        rs.absolute((currentPage-1) * pagesize+1);//定位记录指针位置
        for(int i=1;i<=pagesize;i++){
        	%>
        <tr>
        	<td><%=rs.getString("username")%></td>
        	<td><%=rs.getString("pw1")%></td>
        	<td><%=rs.getString("sex")%></td>
        	<td><%=rs.getString("phone")%></td>
        	<td><%=rs.getString("email")%></td>
        	<td><%=rs.getString("hobby1")%></td>
        	<td><%=rs.getString("hobby2")%></td>
        	<td><%=rs.getString("hobby3")%></td>
        	<td><%=rs.getString("dept")%></td>
        	<td><%=rs.getString("note")%></td>
        </tr>
        	<%  
        	if(!rs.next()){//移动记录指针并判断数据是否读完
        		break;
        	}
        }
        %>
        </table>
        <center>
        <%
        out.println("总页数："+maxPage);
        if(currentPage>=1){
        %>
        </center>
        <center>
        <%
        out.println("当前页："+currentPage);
        %>
        <br>
        <a href="zd0118member_list.jsp?page=1">第一页</a>
        <a href="zd0118member_list.jsp?page=<%=currentPage-1%>">上一页</a>
        </center>
        <%
        }
        if(currentPage<=maxPage){
        %>
        <center>
         <a href="zd0118member_list.jsp?page=<%=currentPage+1%>">下一页</a>
         <a href="zd0118member_list.jsp?page=<%=maxPage%>">最后一页&nbsp;</a>
         </center>
        <%
        }
        rs.close();
        ps.close();
        conn.close();
         %>
</body>
</html>