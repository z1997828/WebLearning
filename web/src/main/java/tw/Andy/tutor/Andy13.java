package tw.Andy.tutor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.Andy.classes.AndyCalc;
import tw.Andy.classes.AndyUtils;

//View
@WebServlet("/Andy13")
public class Andy13 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		String web = "";
		try {
			
			AndyCalc andyCalc = (AndyCalc)request.getAttribute("andyCalc");
			String view = (String)request.getAttribute("view");
			web = AndyUtils.loadView(view);
			
			String[] ops = {"","","",""};
		
			ops[andyCalc.getOp()] = "selected";
		
			out.printf(web, andyCalc.getX(), 
					ops[0], ops[1], ops[2], ops[3],
					andyCalc.getY(), 
					andyCalc.result());
			
		} catch (Exception e) {
			System.out.println("debug1:" + e);
			out.printf(web, "", "", "", "", "", "","");			
		}
		
	}
}
