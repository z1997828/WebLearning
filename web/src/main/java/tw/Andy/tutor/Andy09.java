package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Andy09")
public class Andy09 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String x = request.getParameter("x");
		String y = request.getParameter("y");

		Object xx = (String)request.getAttribute("x");
		
		PrintWriter out = response.getWriter();
		out.print("123 345<hr>");
		if( name != null) {
			out.print("<div>" + "Hello" + name + "</div>");
		}
		out.printf("%s : %s",x,y);
		out.printf("%s",xx);

	}

}
