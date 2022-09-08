package net.thilina.springboot.controller;

import net.thilina.springboot.exception.ResourceNotFoundException;
import net.thilina.springboot.model.History;
import net.thilina.springboot.model.Issue;
import net.thilina.springboot.repository.HistoryRepository;
import net.thilina.springboot.repository.IssueRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Map;

@CrossOrigin("*")                       //  this annotation for share data within difference origins
@RestController                         //  this annotation for recognize as a controller
@RequestMapping("/api/v1/issue")      //  this annotation for map HTTP requests (like GET ,POST ,PUT ,DELETE)
public class IssueController {

    @Autowired                                  // this annotation for dependency injections
    private IssueRepository issueRepository;
    @Autowired// this annotation for dependency injections
    private HistoryRepository historyRepository;

    @GetMapping                                 // this is to GET method
    public List<Issue> getAllIssues(){
        return issueRepository.findAll();
    }

    //build create Issue REST API
    @PostMapping                                  // this is to POST method
    public Issue createIssue(@RequestBody Issue issue){
        return issueRepository.save(issue);
    }


    //build get Issue by REST API
    @GetMapping("{id}")
    public ResponseEntity<Issue> getIssueById(@PathVariable long id) {
        Issue issue = issueRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Issue not exist with id:" + id));
        return ResponseEntity.ok(issue);
    }

     //build get history by REST API
    @GetMapping("/history/{id}")
    public ResponseEntity<List<History>> getHistoryBYId(@PathVariable long id) {
        List<History> history = historyRepository.findAllByIssueId(id);
        return ResponseEntity.ok(history);
    }

    //build update issue REST API
    @PutMapping("/{id}")
    public ResponseEntity<Issue> updateIssue(@PathVariable long id,@RequestBody Issue issueDetails) {
        Issue updateIssue = issueRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Issue not exist with id: " +id));

        History history = new History();
        history.setRecord_type(issueDetails.getType());
        history.setRecord_title(issueDetails.getTitle());
        history.setRecord(issueDetails.getIssue());
        history.setRecord_status(issueDetails.getStatus());
        history.setIssue(updateIssue);
        historyRepository.save(history);
        updateIssue.getHistory().add(history);

        updateIssue.setType(issueDetails.getType());
        updateIssue.setStatus(issueDetails.getStatus());
        updateIssue.setIssue(issueDetails.getIssue());
        updateIssue.setTitle(issueDetails.getTitle());
        issueRepository.save(updateIssue);
        return ResponseEntity.ok(updateIssue);
    }

    // build delete employee REST API
    @DeleteMapping("{id}")
    public ResponseEntity<HttpStatus> deleteEmployee(@PathVariable long id) {
        Issue issue = issueRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Issue not exist with id: " + id));
        issueRepository.delete(issue);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @GetMapping("/reports")
    public ResponseEntity<List<Map<String, ?>>> generateReport(){
        return ResponseEntity.ok(issueRepository.report());
    }
}

