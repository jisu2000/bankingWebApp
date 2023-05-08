package Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import Entities.Statement;

@Repository
public class StatementRepo {

	@Autowired
	private HibernateTemplate template;

	@Transactional
	public void addStatement(Statement statement) {
		this.template.save(statement);
	}

	@Transactional
	public List<Statement> getAllstatement(int id) {
		Session session2 = template.getSessionFactory().getCurrentSession();
		String hql = "from Statement where user_userId=:id";
		Query query = session2.createQuery(hql);
		query.setParameter("id", id);
		List<Statement> list = query.list();
		return list;
	}
}
