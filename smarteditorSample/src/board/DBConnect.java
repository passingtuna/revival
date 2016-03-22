package board;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public DBConnect() {}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "tuna";
		String pass = "1234";
		
		Connection con = null;
		
		try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,id,pass);
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
