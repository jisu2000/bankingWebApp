package Entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Statement {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int stId;
	
	@ManyToOne
	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	private String diposite;
	private String withdraw;
	private String aval;
	private String date;
	
	public Statement() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Statement( String diposite, String withdraw, String aval, String date) {
		super();
		this.diposite = diposite;
		this.withdraw = withdraw;
		this.aval = aval;
		this.date = date;
	}

	public int getStId() {
		return stId;
	}

	public void setStId(int stId) {
		this.stId = stId;
	}

	public String getDiposite() {
		return diposite;
	}

	public void setDiposite(String diposite) {
		this.diposite = diposite;
	}

	public String getWithdraw() {
		return withdraw;
	}

	public void setWithdraw(String withdraw) {
		this.withdraw = withdraw;
	}

	public String getAval() {
		return aval;
	}

	public void setAval(String aval) {
		this.aval = aval;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Statement [stId=" + stId + ", diposite=" + diposite + ", withdraw=" + withdraw + ", aval=" + aval
				+ ", date=" + date + "]";
	}
	
	
	
	
	
	
	

}
