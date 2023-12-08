package tw.Andy.tutor;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Andy15")
public class Andy15 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BufferedImage img = ImageIO.read(new File("C:\\Users\\USER\\eclipse-workspace\\Andy\\dir2\\4k.jpg"));
		Graphics2D g2d = img.createGraphics();
		
		Font font = new Font(null, Font.BOLD, 500);
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(30));
		Font font2 = font.deriveFont(tran);
		
		g2d.setColor(Color.YELLOW);
		g2d.setFont(font2);
		g2d.drawString("孜孜吱吱", 300, 300);
		
		
		response.setContentType("image/jpeg");
		OutputStream os = response.getOutputStream();
		
		ImageIO.write(img, "jpeg", os);
		
//		ImageIO.write(img, "jpeg", new File("C:\\Users\\USER\\eclipse-workspace\\web\\src\\main\\Imgs\\Andy.jpg"));

	}

}
