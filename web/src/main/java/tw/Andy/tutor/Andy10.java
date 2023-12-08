package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.Andy.classes.Andy_bike;

/**
 * Servlet implementation class Andy10
 */
@WebServlet("/Andy10")
public class Andy10 extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("Andy11");
		
		Andy_bike b1 = new Andy_bike();
		b1.upSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed();
		System.out.println(b1.getSpeed());
		
		request.getAttribute("Andy_bike");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("I AM AUTOMIC! <hr>");
		
		dispatcher.include(request, response);
		out.print("<hr>ko no seikai!");

	}

}
