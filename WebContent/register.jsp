<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js校验</title>
    <script language="javascript">
  function check(formregist){
    var userName=formregist.userName.value;
    var password=formregist.password.value;
    var pw2=formregist.pw2.value;
    var phone=formregist.phone.value;
    var email=formregist.email.value;
    /**姓名检测*/
      
 	     var objExp=/^[\u4E00-\u9FA5]{2,}|[a-zA-Z0-9]{5,17}$/;
 	    //var objExp=/^[a-zA-Z0-9]{5,17}$/
 	     if(objExp.test(Name)==true)
		{
	           alert("您输入的真实姓名正确！");
	         }
	     else
  	        {
	         alert("您输入的真实姓名不正确！请重新输入姓名：");
	         formregist.userName.focus();
                     return false;
	         }     
	       
   /**密码检测*/
      
 	   var objExp=/^[a-zA-Z]{1}[a-zA-Z0-9]{5,17}$/;
 	   if(objExp.test(password)==true)
		{
	        alert("您输入的密码正确！");
	        }
	  else
 		{
	        alert("密码格式为：6-18位字母数字组成，且以字母开头。请重新输入密码：");
	        formregist.password.focus();
	        return false;
	        }
	   

    /**确认密码检测*/
	 if(formregist.password.value==formregist.pw2.value)
              alert("您两次输入的密码一样！");
         else
             {
              alert("两次输入的密码不一样，请重新输入密码：");
              formregist.pw2.focus();
	      return false;
		} 

   /**电话号码检测*/
       if(/^((13[0-9]{1})|(15[0-9]{1}))+\d{8}$/.test(phone))
         alert("您输入的电话号码格式正确！");
       
       else{
         alert("电话号码格式不对！");
         formregist.phone.focus();
         return false;
         }

   /**邮箱检测*/      
     if(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(email))
        alert("您输入的邮箱格式正确！");
     else{
        alert("邮箱格式不对！");
	formregist.email.focus();
	return false;
        
	}
   }  
   </script>
</head>
<body>
    <span><font color="red">${requestScope.error}</font></span>
     <form name="formregist" method="post" action="RegisterServlet" onSubmit="return check(this)">
    <table width="500" height="300" border="1" align="center" >
      <caption>用户注册</caption>
      <tr>
	<td colspan="3"> 用户名：</td>
	<td><input name="userName"  type="text" value=""></td>
      </tr>
      <tr>
	<td colspan="3"> 密码：</td>
	<td><input name="password"  type="password" value=""></td>
      </tr>
      <tr>
	<td colspan="3"> 确认密码：</td>
	<td><input name="pw2" type="password"value=""></td>
      </tr>
      <tr>
	<td colspan="3"> 性别：</td>
	<td><input name="sex" type="radio" id="sex" value="男"checked>男&nbsp;
            <input name="sex" type="radio" id="sex" value="女">女</td>
      </tr>
      <tr>
	<td colspan="3">电话号码：</td>
	<td><input name="phone" type="text" value=""></td>
      </tr>
      <tr>
	<td colspan="3"> 邮箱：</td>
	<td><input name="email" type="text" value=""></td>
      </tr>
       <tr>
	<td colspan="3"> 兴趣:</td>
	<td colspan="3"><input name="hobby1"  type="checkbox"  value="羽毛球">
		羽毛球&nbsp;
	      <input name="hobby2"   type="checkbox"  value="乒乓球"> 
		乒乓球&nbsp;
	      <input name="hobby3"   type="checkbox"  value="篮球">
		篮球</td>
      </tr>
       <tr>
	<td colspan="3"> 学院:</td>
	<td colspan="3"><select name="dept">
		<option value="软件学院">软件学院</option>
		<option value="计算机学院">计算机学院</option>
		<option value="艺术学院">艺术学院</option>
 	     </select></td>
      </tr>
      <tr>
	<td colspan="3"> 备注:</td>
	<td><textarea cols="55" rows="10"  name="note" >
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