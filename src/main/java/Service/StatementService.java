package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Entities.Statement;
import Repository.StatementRepo;

@Service
public class StatementService {

	@Autowired
	private StatementRepo repo;

	public void addStatement(Statement st) {
		this.repo.addStatement(st);
	}

	public List<Statement> getAllstatement(int id) {
		return this.repo.getAllstatement(id);
	}
}
