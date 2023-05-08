package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import Entities.Employee;
import Repository.EmpDao;

@Service
public class EmployeeService {

	@Autowired
	private EmpDao empdao;
	

	public void addEmployee(Employee employee) {
		this.empdao.addEmployee(employee);
		
	}

	public Employee getEmployee(int id) {
		return this.empdao.getEmployee(id);
	}

	public List<Employee> getAll() {
		return this.empdao.getallEmp();
	}

	public void deleteEmp(int id) {
		this.empdao.deleteEmployee(id);
	}

	public void updateEmployee(int id, String name, String email, String pass, String cont, long sal, String add) {
		Employee emp = new Employee();
		Employee temp = (Employee) this.empdao.getEmployee(id);
		emp.setEmpId(id);
		emp.setEmpName(name);
		emp.setEmpEmail(email);
		emp.setPassword(pass);
		emp.setEmpCont(cont);
		emp.setEmpsal(sal);
		emp.setEmpAdd(add);
		emp.setImage(temp.getImage());
		emp.setJoinedDate(temp.getJoinedDate());

		this.empdao.updateEmployee(emp);
	}
}
