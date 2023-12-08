package tw.Andy.tutor;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.Andy.classes.AndyCalc;

@WebServlet("/Andy12")
public class Andy12 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		1.接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");

//		2.計算
		try {
			AndyCalc andyCalc = new AndyCalc(x,y,op);
			request.setAttribute("andyCalc", andyCalc);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
//		3.View
		request.setAttribute("view","view01");
		RequestDispatcher dispatcher = request.getRequestDispatcher("Andy13");
		dispatcher.forward(request, response);

	}

}
