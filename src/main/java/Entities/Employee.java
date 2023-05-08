package Entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;


@Entity
public class Employee {

	@Id
	private int empId;
	private String empName;
	private String empEmail;
	private String empCont;
	private String empAdd;
	private long empsal;
	private String joinedDate;
	private String password;
	
	@OneToMany
	private List<Empsal> list;
	
	
	@Lob
	private ArrayList<Integer> image;
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empEmail=" + empEmail + ", empCont=" + empCont
				+ ", empAdd=" + empAdd + ", empsal=" + empsal + ", joinedDate=" + joinedDate + ", password=" + password
				+ ", list=" + list + ", image=" + image + "]";
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpCont() {
		return empCont;
	}
	public void setEmpCont(String empCont) {
		this.empCont = empCont;
	}
	public String getEmpAdd() {
		return empAdd;
	}
	public void setEmpAdd(String empAdd) {
		this.empAdd = empAdd;
	}
	public long getEmpsal() {
		return empsal;
	}
	public void setEmpsal(long empsal) {
		this.empsal = empsal;
	}
	public String getJoinedDate() {
		return joinedDate;
	}
	public void setJoinedDate(String joinedDate) {
		this.joinedDate = joinedDate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public ArrayList<Integer> getImage() {
		return image;
	}
	public void setImage(ArrayList<Integer> image) {
		this.image = image;
	}
	
	public List<Empsal> getList() {
		return list;
	}
	public void setList(List<Empsal> list) {
		this.list = list;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
		this.empId=new Random().nextInt(900000)+100000;
		
	}
	public Employee(String empName, String empEmail, String empCont, String empAdd, long empsal,
			String joinedDate, String password) {
		super();
		this.empId=new Random().nextInt(900000)+100000;
		this.empName = empName;
		this.empEmail = empEmail;
		this.empCont = empCont;
		this.empAdd = empAdd;
		this.empsal = empsal;
		this.joinedDate = joinedDate;
		this.password = password;
	}
	
	
	
	
}
