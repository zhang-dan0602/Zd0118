package nuc.sw.dao;
import java.lang.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import nuc.sw.bean.LoginBean;
import nuc.sw.bean.zd0118member;
import nuc.sw.dbc.*;
public class Zd0118memberDao {
	   private Connection conn=null;
	   private PreparedStatement ps=null;
	   private ResultSet rs=null;
	   public boolean doInsert(zd0118member m){
			boolean flag=false;
			conn=DBUtil.getConn();
			String sql="insert into zd0118member values(?,?,?,?,?,?,?,?,?,?)";
			try {
				ps=conn.prepareStatement(sql);
				ps.setString(1,m.getUsername());
				ps.setString(2,m.getPw1());
				ps.setString(3,m.getSex());
				ps.setString(4,m.getPhone());
				ps.setString(5,m.getEmail());
				ps.setString(6,m.getHobby1());
				ps.setString(7,m.getHobby2());
				ps.setString(8,m.getHobby3());
				ps.setString(9,m.getDept());
				ps.setString(10,m.getNote());
				if( ps.executeUpdate()>0){
					flag=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return flag;
		}

	   public boolean isUser(LoginBean lb){
		     boolean flag1=false;
		   //��ȡ����
		 conn=DBUtil.getConn();
		 //��������
		String sql="select username,pw1 from zd0118member where username=? and pw1=?";
		
			try {
				ps=conn.prepareStatement(sql);
				ps.setString(1,lb.getUserName());
				ps.setString(2,lb.getPassword());
				rs=ps.executeQuery();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			try {
				if(rs.next()){
					flag1=true;
				}
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		
		return flag1;
	   }
	   
	   
		 
	   //�����û�����ѯ���û�����Ϣ
	   public zd0118member findByUsername(String userName){
		   zd0118member m=null;
		   //��ȡ����
		   conn=DBUtil.getConn();
		   //�������� ��ѯ�������ݷŵ�m��
		   String sql="select * from zd0118member where username=?";
		   try {
			ps=conn.prepareStatement(sql);
			ps.setString(1,userName);
			rs=ps.executeQuery();
			   if(rs.next()){
				   //����ѯ����Ľ���������Ϣ��װ��m
				   m=new zd0118member();
				  m.setUsername(rs.getString(1));
				  m.setPw1(rs.getString(2));
				  m.setSex(rs.getString(3));
				  m.setPhone(rs.getString(4));
				  m.setEmail(rs.getString(5));
				  m.setHobby1(rs.getString(6));
				  m.setHobby2(rs.getString(7));
				  m.setHobby3(rs.getString(8));
				  m.setDept(rs.getString(9));
				 m.setNote(rs.getString(10));
			   }
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		   return m;   
	   }
	   
	   //�����û�����ѯ�����û�����Ϣ
	   public List<zd0118member> findAll(){
		   List<zd0118member> mlist=new ArrayList<zd0118member>();
		   zd0118member  m=null;
		   //��ȡ����
		   conn=DBUtil.getConn();
		   //�������� ��ѯ�������ݷŵ�m��
		   String sql="select * from zd0118member";
			try {
				ps=conn.prepareStatement(sql);
				rs=ps.executeQuery();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
			   try {
				while(rs.next()){
					   //����ѯ����Ľ���������Ϣ��װ��m
					   m=new zd0118member();
					  m.setUsername(rs.getString(1));
					  m.setPw1(rs.getString(2));
					  m.setSex(rs.getString(3));
					  m.setPhone(rs.getString(4));
					  m.setEmail(rs.getString(5));
					  m.setHobby1(rs.getString(6));
					  m.setHobby2(rs.getString(7));
					  m.setHobby3(rs.getString(8));
					  m.setDept(rs.getString(9));
					 m.setNote(rs.getString(10));
					 mlist.add(m);
				   }
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		   return mlist;   
	   }
	   


		//�����û����޸ĸ��û�����Ϣ
	   public boolean doUpdate(zd0118member m){
		     boolean flag2=false;
		    //��ȡ����
		  conn=DBUtil.getConn();
		  //��������
		  String sql="update zd0118member set username=?,pw1=?,sex=?,phone=?,email=?,hobby1=?,hobby2=?,hobby3=?,dept=?,note=? where username=?";
				try {
					ps=conn.prepareStatement(sql);
				} catch (SQLException e1) {
					// TODO �Զ����ɵ� catch ��
					e1.printStackTrace();
				}
				try {
					ps.setString(1,m.getUsername());
					ps.setString(2,m.getPw1());
					ps.setString(3, m.getSex());
					ps.setString(4, m.getPhone());
					ps.setString(5, m.getEmail());
					ps.setString(6, m.getHobby1());
					ps.setString(7, m.getHobby2());
					ps.setString(8, m.getHobby3());
					ps.setString(9, m.getDept());
					ps.setString(10, m.getNote());
					ps.setString(11,m.getUsername());
					if(ps.executeUpdate()>0){
						 flag2=true;
					}
					if(ps!=null)
                               ps.close();
				} catch (SQLException e) {
					// TODO �Զ����ɵ� catch ��
					e.printStackTrace();
				}
		return flag2;
	   }
	   
	  

	//�����û���ɾ�����û�����Ϣ
	   public zd0118member doDelete(String userName){
		     zd0118member m=null;
		    //��ȡ����
		  conn=DBUtil.getConn();
		  //��������
		  String sql="delete from zd0118member where username=?";
				try {
					ps=conn.prepareStatement(sql);
					ps.setString(1,userName);
					if(ps.executeUpdate()>0){
						return m;
					}
				} catch (SQLException e) {
					// TODO �Զ����ɵ� catch ��
					e.printStackTrace();
				}
				return m;
	   }
}
