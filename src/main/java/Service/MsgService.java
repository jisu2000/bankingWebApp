package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Controller.MsgController;
import Entities.Message;
import Repository.MsgRepo;

@Service
public class MsgService {

	@Autowired
	private MsgRepo repo;

	public void addMsg(Message msg) {
		this.repo.addMsg(msg);
	}

	public List<Message> getAllmsg() {
		
		return this.repo.getAllmsg();
	}
	
	public void delMsg(int id)
	{
		this.repo.delMsg(id);
	}

}
