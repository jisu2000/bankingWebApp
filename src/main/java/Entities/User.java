package Entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

@Entity
public class User {

	@Id
	private int userId;
	private String userName;
	private String userEmail;
	private String userAddress;
	private String cont;
	private String ifSc;
	private long balance;
	private int accNo;

	@OneToMany
	private List<Statement> statements;

	@Lob
	private ArrayList<Integer> image;
	private String OpenedDate;
	private String password;

	public User() {
		super();
		this.userId = new Random().nextInt(900000) + 100000;
		this.accNo = new Random().nextInt(900000) + 100000;

		this.ifSc = "REG123";
	}

	public User(int userId, String userName, String userEmail, String userAddress, String cont,
			ArrayList<Integer> image, String openedDate, String password) {
		super();
		this.userId = new Random().nextInt(900000) + 100000;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.cont = cont;
		this.image = image;
		OpenedDate = openedDate;
		this.password = password;
	}

	public String getIfSc() {
		return ifSc;
	}

	public void setIfSc(String ifSc) {
		this.ifSc = ifSc;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getCont() {
		return cont;
	}

	public void setCont(String cont) {
		this.cont = cont;
	}

	public ArrayList<Integer> getImage() {
		return image;
	}

	public void setImage(ArrayList<Integer> image) {
		this.image = image;
	}

	public String getOpenedDate() {
		return OpenedDate;
	}

	public void setOpenedDate(String openedDate) {
		OpenedDate = openedDate;
	}

	public String getPassword() {
		return password;
	}

	public long getBalance() {
		return balance;
	}

	public void setBalance(long balance) {
		this.balance = balance;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

	public List<Statement> getStatements() {
		return statements;
	}

	public void setStatements(List<Statement> statements) {
		this.statements = statements;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userAddress="
				+ userAddress + ", cont=" + cont + ", ifSc=" + ifSc + ", balance=" + balance + ", image=" + image
				+ ", OpenedDate=" + OpenedDate + ", password=" + password + "]";
	}

}
