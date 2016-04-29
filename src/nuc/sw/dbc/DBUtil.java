package nuc.sw.dbc;
import java.sql.*;
public class DBUtil {
	private static Connection conn=null;
  static{
	  try {
		//加载驱动
		  Class.forName("org.gjt.mm.mysql.Driver");
		  //获取连接
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/zd0118","root","123456");
	} catch (ClassNotFoundException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
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
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
  }
}
