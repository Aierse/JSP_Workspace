import java.sql.*;

public class DBUpdate {

	public static void main(String[] args) {
		Connection conn;
		Statement stmt;
		ResultSet rs;
		String sql;
		String server="jdbc:mysql://192.168.1.3/db174434";
		String user="dbuser174434";
		String pw="ce1234";
		
		try {
			conn = DriverManager.getConnection(server, user, pw);
			stmt = conn.createStatement();
			sql = "UPDATE book SET price = price * 1000 WHERE id = 1";
			int x = stmt.executeUpdate(sql);
			System.out.printf("%d updated.\n", x);
			stmt.close();
			conn.close();
			} catch ( SQLException e ) {
			System.err.println("DB Error" + e.getMessage());
			return;
		}
	}
}