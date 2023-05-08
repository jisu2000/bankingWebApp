package Repository;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import Entities.User;

@Repository
public class UserDao {
	
	@Autowired
	private HibernateTemplate template;
	

	
	@Transactional
	public void addUser(User user)
	{
		this.template.saveOrUpdate(user);
		
	}
	
	public List<User> getalluser()
	{
		return (List<User>)this.template.loadAll(User.class);
	}
	
	public User getUser(int id)
	{
		return this.template.get(User.class, id);
	}
	
	@Transactional
	public void delUser(int id)
	{
		User user=getUser(id);
		this.template.delete(user);
		
	}
	
	
	@Transactional
	public User getUserByAccNoAndIfSc(int accNo, String ifSc) {
	    Session session = this.template.getSessionFactory().getCurrentSession();
	    CriteriaBuilder builder = session.getCriteriaBuilder();
	    CriteriaQuery<User> query = builder.createQuery(User.class);
	    Root<User> root = query.from(User.class);
	    
	    query.select(root)
	         .where(builder.equal(root.get("accNo"), accNo),
	                builder.equal(root.get("ifSc"), ifSc));
	    
	    return session.createQuery(query).uniqueResult();
	}

	
	
	

	
	
}
