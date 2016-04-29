package nuc.sw.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nuc.sw.bean.zd0118member;
import nuc.sw.dao.Zd0118memberDao;

/**
 * Servlet implementation class UpdateInfoServlet
 */
public class UpdateInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateInfoServlet() {
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
				m.setUsername(request.getParameter("userName"));
				m.setPw1(request.getParameter("password"));
				m.setSex(request.getParameter("sex"));
				m.setPhone(request.getParameter("phone"));
				m.setEmail(request.getParameter("email"));
				m.setHobby1(request.getParameter("hobby1"));
				m.setHobby2(request.getParameter("hobby2"));
				m.setHobby3(request.getParameter("hobby3"));
				m.setDept(request.getParameter("dept"));
				m.setNote(request.getParameter("note"));
				
				Zd0118memberDao mDao=new Zd0118memberDao();
				if(mDao.doUpdate(m)){
				//ע����Ϣ,����Ϣ�ŵ�session��
					request.getSession().setAttribute("username",request.getParameter("userName"));
					request.getSession().setAttribute("pw1",request.getParameter("password"));
					request.getSession().setAttribute("sex",request.getParameter("sex"));
					request.getSession().setAttribute("phone",request.getParameter("phone"));
					request.getSession().setAttribute("email",request.getParameter("email"));
					request.getSession().setAttribute("hobby1",request.getParameter("hobby1"));
					request.getSession().setAttribute("hobby2",request.getParameter("hobby2"));
					request.getSession().setAttribute("hobby3",request.getParameter("hobby3"));
					request.getSession().setAttribute("dept",request.getParameter("dept"));
					request.getSession().setAttribute("note",request.getParameter("note"));
					request.setAttribute("yesyes", "�޸ĳɹ�!");
					//��������ת��userLoginPage.jsp
					//ע��ɹ�
					request.getRequestDispatcher("userShowPage.jsp").forward(request,response);	
				}
				else{
					 //ע�������Ϣ
					request.setAttribute("error", "�޸Ĵ�������������");
					//��������ת��login.jsp
					request.getRequestDispatcher("updateInfoPage.jsp").forward(request,response);	
				}
				
			}
	}


