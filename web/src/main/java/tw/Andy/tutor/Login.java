package tw.Andy.tutor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.Andy.classes.MemberDB;


@WebServlet("/Login")
public class Login extends HttpServlet {
	
	private  MemberDB memberDB;
    
	public Login() {
		try {
			memberDB = new MemberDB();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		
		
		try {
			if(memberDB.Login(account, passwd)) {
			response.sendRedirect("main.jsp");
			} else {
				response.sendRedirect("Andy24.jsp");
				
			}
//			throw new SQLException();
		} catch (Exception e) {
			System.out.println(e);
			response.sendRedirect("Andy24.jsp");
		}
	}

}
