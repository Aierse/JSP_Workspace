import java.sql.*;

public class DBInsert {

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
			sql = "INSERT INTO book(id, title, author, publication, pub_year, isbn, price, num_inventory) "
					+ "VALUES(1, '연금술사', '파울러 코엘료 저/최정수 역', '문학동네', 2001, 9788982814471, 9000, 100)";
			int x = stmt.executeUpdate(sql);
			System.out.printf("%d updated.\n", x);
			stmt.close();
			conn.close();
			} catch ( SQLException e ) {
			System.err.println("DB Error" + e.getMessage());
			return;
		}
		
		System.out.println("Insert 완료");
	}
}