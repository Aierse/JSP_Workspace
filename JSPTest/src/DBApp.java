import java.sql.*;

public class DBApp {

	public static void main(String[] args) {
		Connection conn;
		Statement stmt;
		ResultSet rs;
		String sql;
		String jdbcUrl="jdbc:mysql://192.168.1.3/db174434";
		String userID="dbuser174434";
		String userPW="ce1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch ( ClassNotFoundException e ) {
			System.err.println("Driver Error" + e.getMessage());
			return;
		}
		
		System.out.println("JDBC Driver is found. OK.");
		
		try {
			conn = DriverManager.getConnection(jdbcUrl, userID, userPW);
			System.out.println("Connection Success");
			stmt = conn.createStatement();
			sql = "SELECT * FROM dependent";
			rs = stmt.executeQuery( sql );
			while (rs.next() ) {
			String name = rs.getString("name") ; // number
			String sex = rs.getString("sex");
			String relationship = rs.getString("relationship");
			int emp_ssn = rs.getInt("emp_ssn");
			System.out.printf("%s %s %s %d\n", name, sex, relationship, emp_ssn);
			}
			stmt.close();
			conn.close();
		} catch ( SQLException e ) {
			System.err.println("DB Error" + e.getMessage());
			return;
		}
	}
}