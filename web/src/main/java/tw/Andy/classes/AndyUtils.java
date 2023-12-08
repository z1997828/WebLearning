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
}
