package net.thilina.springboot.model;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.security.Timestamp;
import java.time.LocalTime;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "history")
public class History {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "record_type")
    private String record_type;

    @Column(name = "record")
    private String record;

    @Column(name = "record_status")
    private String record_status;

    @Column(name = "record_title")
    private String record_title;

    @CreationTimestamp
    @Column (name = "Created_at", nullable = false, updatable = false)
    private Date createdAt;

    @ManyToOne
    @JsonIgnore
    @JoinColumn(name="issue_id", nullable=false)
    private Issue issue;
}
