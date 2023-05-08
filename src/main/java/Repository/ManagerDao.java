package Repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import Entities.Manager;

@Repository
public class ManagerDao {

	@Autowired
	private HibernateTemplate template;
	
	public Manager getmanManager(int id)
	{
		return (Manager)this.template.get(Manager.class, id);
	}
}
