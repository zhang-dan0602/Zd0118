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
		//���ñ���
		request.setCharacterEncoding("utf-8");
		//���û��������װ��LoginBean��
		LoginBean lb=new LoginBean();
		lb.setUserName(request.getParameter("userName"));
		lb.setPassword(request.getParameter("password"));
		Zd0118memberDao mDao=new Zd0118memberDao();
		if(mDao.isUser(lb)){
		//�û���������ȷ,�ŵ�session��
			request.getSession().setAttribute("username",request.getParameter("userName"));
			//��������ת��userLoginPage.jsp
			request.getRequestDispatcher("userShowPage.jsp").forward(request,response);	
		}
		else{
			 //���������Ϣ
			request.setAttribute("error", "�û����������������������");
			//��������ת��login.jsp
			request.getRequestDispatcher("login.jsp").forward(request,response);	
		}
		
		
	}
}
