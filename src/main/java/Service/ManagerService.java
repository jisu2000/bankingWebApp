package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Entities.Manager;
import Repository.ManagerDao;

@Service
public class ManagerService {
	
	@Autowired
	private ManagerDao dao;
	
	
	public Manager getManager(int id)
	{
		return(Manager) this.dao.getmanManager(id);
	}
}
