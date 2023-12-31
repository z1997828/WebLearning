package tw.Andy.tutor;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/Andy07")
@MultipartConfig(
		location = "C:\\Users\\USER\\eclipse-workspace\\web\\upload"
		)
public class Andy07 extends HttpServlet {
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Collection<Part> parts = request.getParts();
		
		
		for (Part part : parts) {
			String type = part.getContentType();
			if(type != null && part.getSize() > 0) {
				part.write(part.getSubmittedFileName());
			}
		}
		

	}

}
