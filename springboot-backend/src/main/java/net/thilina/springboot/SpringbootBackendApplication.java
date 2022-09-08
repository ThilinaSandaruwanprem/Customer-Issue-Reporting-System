package net.thilina.springboot;

import net.thilina.springboot.repository.HistoryRepository;
import net.thilina.springboot.repository.IssueRepository;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

public class SpringbootBackendApplication implements CommandLineRunner {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootBackendApplication.class, args);
	}

	@Autowired
	private IssueRepository issueRepository;

	@Autowired
	private HistoryRepository historyRepository;

	@Override
	@CreationTimestamp
	public void run(String... args) throws Exception {
//		History history = new History();
//		history.setRecord_id(1);
//		history.setRecord("Bla bla bla");
//		history.setRecord_type("Bug");
//		history.setRecord_title("eyfgwuyefh");
//		historyRepository.save(history);

	}
}
