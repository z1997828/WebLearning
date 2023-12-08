package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.Andy.classes.Andy_bike;


@WebServlet("/Andy11")
public class Andy11 extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		
		Andy_bike b1 = (Andy_bike)request.getAttribute("Andy_bike");
		out.print("Shadow" + b1.getSpeed());


	}
}
