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
		//���ñ���
		request.setCharacterEncoding("utf-8");
		//���û��������װ��LoginBean��
		zd0118member m=new zd0118member();
		Zd0118memberDao mDao=new Zd0118memberDao();
		m=mDao.doDelete((String)request.getSession().getAttribute("username"));
		//��������ת��userShowPage.jsp
		request.setAttribute("yes", "ɾ���ɹ�!����ע���!");	
		request.getRequestDispatcher("register.jsp").forward(request,response);
	}

}
