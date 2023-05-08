package Entities;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Generated;

@Entity
public class Empsal {

	@Id
	private int salId;
	private String date;
	private int amount;
	
	@ManyToOne
	private Employee emp;

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public Empsal() {

		// TODO Auto-generated constructor stub
		this.salId = new Random().nextInt(900) + 100;
	}

	public Empsal(int salId, String date, int amount) {
		super();
		this.salId = new Random().nextInt(900) + 100;

		this.date = date;
		this.amount = amount;
	}

	public int getSalId() {
		return salId;
	}

	public void setSalId(int salId) {
		this.salId = salId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "Empsal [salId=" + salId + ", date=" + date + ", amount=" + amount + "]";
	}
	
	

}
