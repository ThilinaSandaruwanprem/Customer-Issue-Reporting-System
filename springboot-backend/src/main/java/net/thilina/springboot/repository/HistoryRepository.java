package net.thilina.springboot.repository;

import net.thilina.springboot.model.History;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HistoryRepository extends JpaRepository<History, Long> {

    @Query(value = "SELECT h.* from history h inner join issue i ON h.issue_id= i.id",nativeQuery = true)
    List<History> findAllByIssueId(long id);
}
