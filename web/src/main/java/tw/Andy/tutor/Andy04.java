package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Andy04")
public class Andy04 extends HttpServlet {
	private final String html ="<!DOCTYPE html>\r\n"
			+ "<html>\r\n"
			+ "\r\n"
			+ "	<head>\r\n"
			+ "		<meta charset='UTF-8'>\r\n"
			+ "		<title>Insert title here</title>\r\n"
			+ "	</head>\r\n"
			+ "\r\n"
			+ "	<body>\r\n"
			+ "		<form action='Andy04'>\r\n"
			+ "			<input name='x' value='%s'>\r\n"
			+ "			+\r\n"
			+ "			<input name='y' value='%s'>\r\n"
			+ "			<input type='submit' value='=' />\r\n"
			+ "			<sapn>%s</span>"
			+ "		</form>\r\n"
			+ "		</body>\r\n"
			+ "\r\n"
			+ "</html>";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		System.out.printf("%s : %s\n",x,y);
//		設定出現在 meta 內的設定
		response.setContentType("text/html; charset=UTF-8");
//		把 PrintWriter 丟到 out 變數裡面 
		PrintWriter out = response.getWriter();
		
		//拋出例外避免報錯畫面出現
		try {
		int r = Integer.parseInt(x) + Integer.parseInt(y);
			out.printf(html,x,y,r);
		}catch (RuntimeException e) {
			out.printf(html,"","","");
		}
	}
}
