package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Andy08")
public class Andy08 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		不建議在這邊填寫除了接收端以外的參數，如加上?x=1&y=1
		RequestDispatcher dispatcher = request.getRequestDispatcher("Andy09");
		
		request.setAttribute("x","10");
		request.setAttribute("y","3");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		
		out.print("<h1>Hello,World!!!!</h1>");
		out.print("<hr>");
		
		dispatcher.include(request, response);
		
		out.print("GOOD DAY!!!");
//		out.flush();
		
		response.flushBuffer();
	}

}
