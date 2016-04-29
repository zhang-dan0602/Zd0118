package nuc.sw.servlet;

import java.io.IOException;
import java.util.*;
import java.lang.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nuc.sw.bean.zd0118member;
import nuc.sw.dao.Zd0118memberDao;

/**
 * Servlet implementation class ShowAllInfoServlet
 */
public class ShowAllInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAllInfoServlet() {
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
		 List<zd0118member> mlist=new ArrayList<zd0118member>();
	     mlist=mDao.findAll();
		//查找成功，显示信息
	    for(int i=0;i<mlist.size();i++){
	    m=mlist.get(i);
		request.setAttribute("username",m.getUsername());
		request.setAttribute("pw1",m.getPw1());
		request.setAttribute("sex",m.getSex());
		request.setAttribute("phone",m.getPhone());
		request.setAttribute("email",m.getEmail());
		request.setAttribute("hobby1",m.getHobby1());
		request.setAttribute("hobby2",m.getHobby2());
		request.setAttribute("hobby3",m.getHobby3());
		request.setAttribute("dept",m.getDept());
		request.setAttribute("note",m.getNote());
	     
		//服务器跳转到userShowPage.jsp
		request.getRequestDispatcher("userAllShowPage.jsp").forward(request,response);

	  }
	}
}



