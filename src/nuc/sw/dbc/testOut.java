package nuc.sw.dbc;

import java.util.ArrayList;
import java.util.List;

import nuc.sw.bean.zd0118member;
import nuc.sw.dao.Zd0118memberDao;

public class testOut {

	public testOut() {
		// TODO 自动生成的构造函数存根
	}
	public static void main(String[] args){
		zd0118member m=new zd0118member();
		Zd0118memberDao mDao=new Zd0118memberDao();
		 List<zd0118member> mlist=new ArrayList<zd0118member>();
	     mlist=mDao.findAll();
	
	    for(int i=0;i<mlist.size();i++){
		    m=mlist.get(i);
			System.out.println(m.getUsername());
			System.out.println(m.getPw1());
			System.out.println(m.getSex());
	}
	}
}
