package tw.Andy.classes;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;

public class AndyUtils {
	public static String loadView(String view0) throws Exception {
		String viewFolder = "C:\\Users\\USER\\eclipse-workspace\\web\\src\\main\\webapp\\views\\";
		File viewFile =new File(viewFolder + view0 + ".html");
		BufferedReader reader = new BufferedReader(new FileReader(viewFile));
		String line; StringBuffer sb = new StringBuffer();		
		while((line = reader.readLine()) != null){
			sb.append(line);
		}
		reader.close();
		return sb.toString();
	}
	
	public static String calc(String x,String y,String op) {
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			StringBuffer sb =new StringBuffer();
			
			switch (op) {
			case "0":sb.append((intX + intY)); break;
			case "1":sb.append((intX - intY)); break;
			case "2":sb.append((intX * intY)); break;
			case "3":sb.append((intX / intY)).append("...").append((intX % intY)) ; break;
			}
			return sb.toString();
		}catch(Exception e) {
			return "";
		}
	}
}
