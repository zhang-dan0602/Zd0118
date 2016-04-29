package nuc.sw.servlet;
import  nuc.sw.bean.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nuc.sw.dao.*;
/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//设置编码
		request.setCharacterEncoding("utf-8");
		//将用户名密码封装到LoginBean中
		LoginBean lb=new LoginBean();
		lb.setUserName(request.getParameter("userName"));
		lb.setPassword(request.getParameter("password"));
		Zd0118memberDao mDao=new Zd0118memberDao();
		if(mDao.isUser(lb)){
		//用户名密码正确,放到session中
			request.getSession().setAttribute("username",request.getParameter("userName"));
			//服务器跳转到userLoginPage.jsp
			request.getRequestDispatcher("userShowPage.jsp").forward(request,response);	
		}
		else{
			 //输出错误信息
			request.setAttribute("error", "用户名和密码错误，请重新输入");
			//服务器跳转到login.jsp
			request.getRequestDispatcher("login.jsp").forward(request,response);	
		}
		
		
	}
}
