package nuc.sw.dbc;
import java.sql.*;
public class DBUtil {
	private static Connection conn=null;
  static{
	  try {
		//��������
		  Class.forName("org.gjt.mm.mysql.Driver");
		  //��ȡ����
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/zd0118","root","123456");
	} catch (ClassNotFoundException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}

	}
  public static Connection getConn(){
	     return conn;
	  }
  public void close(){
	  try {
		if(conn!=null)
			  conn.close();
	} catch (SQLException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}
  }
}
