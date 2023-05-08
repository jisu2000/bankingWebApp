package Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import Entities.Message;

@Repository
public class MsgRepo {

	@Autowired
	HibernateTemplate template;

	@Transactional
	public void addMsg(Message msg) {
		this.template.save(msg);
	}

	public List<Message> getAllmsg()
	{
		List<Message> list = (List<Message>) this.template.loadAll(Message.class);
		return list;
	}

	@Transactional
	public void delMsg(int id)
	{
		Message msg=(Message)this.template.get(Message.class, id);
		this.template.delete(msg);
	}
}
