package tw.Andy.tutor;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Andy03")
public class Andy03 extends HttpServlet {
	public Andy03() {
		System.out.println("Andy03()");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service()");
//		super.service(req, resp);
		System.out.println(req.getMethod());
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init");
		super.init(config);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()){	
			String param = params.nextElement();
			String value = request.getParameter(param);
			
			System.out.printf("%s : %s\n",param,value);
		}
		
	}

}
