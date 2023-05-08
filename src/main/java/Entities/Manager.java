package Entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Manager {
	
	@Id
	private int managerId;
	private String managerName;
	private String managerEmail;
	private String managerCont;
	private String managerPass;
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Manager(int managerId, String managerName, String managerEmail, String managerCont, String managerPass) {
		super();
		this.managerId = new Random().nextInt(900000)+100000;
		this.managerName = managerName;
		this.managerEmail = managerEmail;
		this.managerCont = managerCont;
		this.managerPass = managerPass;
	}
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getManagerName() {
		return managerName;
	}
	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}
	public String getManagerEmail() {
		return managerEmail;
	}
	public void setManagerEmail(String managerEmail) {
		this.managerEmail = managerEmail;
	}
	public String getManagerCont() {
		return managerCont;
	}
	public void setManagerCont(String managerCont) {
		this.managerCont = managerCont;
	}
	public String getManagerPass() {
		return managerPass;
	}
	public void setManagerPass(String managerPass) {
		this.managerPass = managerPass;
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", managerName=" + managerName + ", managerEmail=" + managerEmail
				+ ", managerCont=" + managerCont + ", managerPass=" + managerPass + "]";
	}
	
	
	
	
	
}
