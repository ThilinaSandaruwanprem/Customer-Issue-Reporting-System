package net.thilina.springboot.repository;

import net.thilina.springboot.model.Issue;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Map;

public interface IssueRepository extends JpaRepository<Issue, Long> {
    // all crud database methods

    @Query("SELECT issue.status as status, Count(issue.id) as status_count FROM Issue issue GROUP BY issue.status")
    List<Map<String, ?>> report();
}

