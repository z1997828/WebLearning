package tw.Andy.tutor;

import java.util.HashMap;
import java.util.HashSet;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;

@ServerEndpoint("/MyServer")
public class MyServer {
	private static HashSet<Session> sessions;
	private static HashMap<String,Session> users;
	
	public MyServer(){
		if (sessions == null) {
			sessions = new HashSet<Session>();
			users = new HashMap<String, Session>();
		}
	}
	@OnOpen
	public void onOpen(Session session) {
		System.out.println("onOpen:"+session.getId());
		if (sessions.add(session)) {
			users.put(session.getId(),session);
		}
		System.out.println("Count:" + sessions.size());
	}
	@OnClose
	public  void onClose(Session session) {
		users.remove(session.getId());
		sessions.remove(session);
		System.out.println("Count: " + sessions.size());
	}	
	
	@OnMessage
	private void onMessage(String message,Session session) {
		System.out.println(session.getId() + ":" +message);

		for (Session s : sessions) {
			try {
				s.getBasicRemote().sendText(message);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}

