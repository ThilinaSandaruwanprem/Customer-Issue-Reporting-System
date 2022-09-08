package net.thilina.springboot.model;

import lombok.*;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Getter                 // to create get methods
@Setter                 // to create post methods
@NoArgsConstructor      // to no arg constructor
@AllArgsConstructor     // to all arg constructor
@Entity                 // to create tables in the database
@Data
@EnableJpaAuditing



@Table(name = "issue")
public class Issue {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "type")
    private String type;

    @Column(name = "status")
    private String status;

    @Column(name = "Title")
    private String title;

    @Column(name = "issue")
    private String issue;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "record_id", referencedColumnName = "id")
    List<History> history = new ArrayList<>();


}
