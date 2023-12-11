package tw.Andy.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Properties;

import com.mysql.cj.xdevapi.PreparableStatement;

public class MemberDB {
	String mesg = "";
	private static final String USER = "root";
	private static final String PASSWD = "root";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/andy";
	private static final String SQL_QUERY = "SELECT * FROM member";
	private static final String SQL_INSERT = "INSERT INTO member (account,password,cname) VALUE(?,?,?);";
	private static final String SQL_LOGIN = "SELECT * FROM member WHERE account = ?";

	private Connection conn;
	private ResultSet rs;
	String[] fieldNames;

	public MemberDB() throws Exception {
		Properties prop = new Properties();
		prop.put("user", USER);
		prop.put("password", PASSWD);

		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(URL, prop);
	}

	public int addNew(String account, String passwd, String cname) throws Exception {
		PreparedStatement pstmt = conn.prepareStatement(SQL_INSERT);
		pstmt.setString(1, account);
		pstmt.setString(2, BCrypt.hashpw(passwd, BCrypt.gensalt()));
		pstmt.setString(3, cname);

		return pstmt.executeUpdate();
	}

	public boolean Login(String account, String passwd) throws Exception {
		PreparedStatement pstmt = conn.prepareStatement(SQL_LOGIN);
		pstmt.setString(1, account);
		ResultSet rset = pstmt.executeQuery();
		if ( rset.next()) {
			String hashPasswd = rset.getString("password");
			if (BCrypt.checkpw(passwd, hashPasswd)) {
				return true;
			}else {
				System.out.println("PASSWD FAILURE");
				return false;
			}
		}else {
			System.out.println("ACCOUNT FAILURE");
			return false;
		}

		
	}

	public void queryDB() throws Exception {
		queryDB(SQL_QUERY);
	}

	public void queryDB(String sql) throws Exception {
		Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		rs = stmt.executeQuery(sql);

		ResultSetMetaData rsmd = rs.getMetaData();
		fieldNames = new String[rsmd.getColumnCount()];
		for (int i = 0; i < fieldNames.length; i++) {
			fieldNames[i] = rsmd.getColumnName(i + 1);
			System.out.println(fieldNames[i]);
		}
	}

}
