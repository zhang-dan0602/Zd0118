<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示个人信息</title>
<style>
#head{
  width:100%;
  height:150px;
}
#head #logo{
  width:100%;
  height:30px;
  background:eee; 
}
#head #logo #left{
  float:left;
  width:50%;
  height:30px;
}
#head #logo #left ul{
 margin:0px;
 padding:0px;
 list-style:none;
}
#head #logo #left li{
 margin-top:2px;
 width:90px;
 float:left;
 height:28px;
 line-height:28px;
 text-align:center;
}
#head #logo #left .tiao{
 margin-top:2px;
 float:left;
 width:1px;
 height:25px;
 background:#000;
}
#head #logo #left a{
  text-decoration:none;
}


#head #logo #right{
  float:right;
  width:50%;
  height:30px;
}
#head #logo #right a{
  text-decoration:none;
  float:right;
  margin-top:8px;
}


#head #search #sign{
  float:left;
  width:400px;
  height:120px;

}
#head #search #sou{
  float:left;
  margin-left:30px;
  width:400px;
  height:120px;

}
#head #search #shop{
  float:left;
  margin-left:30px;
  width:180px;
  height:120px;

}
#head #search #sao{
  float:left;
  margin-left:30px;
  width:180px;

}
</style>
</head>
<body>
<div id="head">
      <div id="logo">
           <div id="left">
              <ul>
           	<li><a href="a">c语言</a></li>
           	<li class="tiao"></li>
	   	<li><a href="a">java</a></li>
           	<li class="tiao"></li>
 		<li><a href="a">jsp</a></li>
           	<li class="tiao"></li>
	   	<li><a href="a">数据结构</a></li>
           	<li class="tiao"></li>
           	<li><a href="a">数据库</a></li>
           	<li class="tiao"></li>
              </ul>
	   </div>
	   <div id="right">
	     <a href="logo.html">登录</a>
             <a href="register.html">注册&nbsp&nbsp</a>
	   </div>
      </div>
      <div id="search">
	   <div id="sign">
	     <center>
             <h1><b><font  face="华文行楷" color="red">欢迎你学习软件开发！</b></h1>
	     </center>
	   </div>
      </div>
   </div>
</body>
</html>