package nuc.sw.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nuc.sw.bean.zd0118member;
import nuc.sw.dao.Zd0118memberDao;

/**
 * Servlet implementation class DeleteInfoServlet
 */
public class DeleteInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteInfoServlet() {
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
		zd0118member m=new zd0118member();
		Zd0118memberDao mDao=new Zd0118memberDao();
		m=mDao.doDelete((String)request.getSession().getAttribute("username"));
		//服务器跳转到userShowPage.jsp
		request.setAttribute("yes", "删除成功!重新注册吧!");	
		request.getRequestDispatcher("register.jsp").forward(request,response);
	}

}
