package Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import Entities.Employee;
import Entities.User;

@Repository
public class EmpDao {

	@Autowired
	private HibernateTemplate template;

	@Transactional
	public void addEmployee(Employee employee) {

		this.template.save(employee);

	}

	public Employee getEmployee(int id) {
		return (Employee) this.template.get(Employee.class, id);
	}

	public List<Employee> getallEmp() {
		return (List<Employee>) this.template.loadAll(Employee.class);
	}

	@Transactional
	public void deleteEmployee(int id) {
		Employee emp = (Employee) this.template.get(Employee.class, id);
		this.template.delete(emp);
	}

	@Transactional
	public void updateEmployee(Employee emp) {
		
		this.template.saveOrUpdate(emp);
	}
}
