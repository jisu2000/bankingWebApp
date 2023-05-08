package Entities;

import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Message {
	
	@Id
	private int msgId;
	private String name;
	private String email;
	private String subject;
	
	@Column(length = 1500)
	private String msg;

	public Message() {
		super();
		// TODO Auto-generated constructor stub
		this.msgId = new Random().nextInt(900000)+100000;
	}

	public Message(int msgId, String name, String email, String subject, String msg) {
		super();
		this.msgId = new Random().nextInt(900000)+100000;
		this.name = name;
		this.email = email;
		this.subject = subject;
		this.msg = msg;
	}

	public int getMsgId() {
		return msgId;
	}

	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "Message [msgId=" + msgId + ", name=" + name + ", email=" + email + ", subject=" + subject + ", msg="
				+ msg + "]";
	}
	
	
	
}
