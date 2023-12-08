package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Andy16")
public class Andy16 extends HttpServlet {
	private static final String USER = "root";
	private static final String PASSWD = "root";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/andy";
	private Connection conn;


	public Andy16() {

		Properties prop = new Properties();
		prop.put("user", USER);
		prop.put("password", PASSWD);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("ok2");

			conn = DriverManager.getConnection(URL);
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM food");

			response.setContentType("text/html; charset=UTF-8");

			PrintWriter out = response.getWriter();
			out.write("<table border='1' width='100'>");

			while (rs.next()) {
				out.print("<tr>");
					out.printf("<td>%s</td>");rs.getString("id");
					out.printf("<td>%s</td>");rs.getString("name");
//					out.printf("<td>%s</td>");rs.getString("");
				out.print("</tr>");

			}
			out.write("</table>");
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
