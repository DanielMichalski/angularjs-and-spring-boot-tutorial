package pl.dmichalski.crm.business.contact_timeline.entity;

import pl.dmichalski.crm.business.client.entity.Client;
import pl.dmichalski.crm.business.user.entity.User;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "contact_timeline")
public class ContactTimeline {

    @Id
    @GeneratedValue
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client client;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "contact_date")
    private Date contactDate;

    @Column(name = "contact_type")
    private String contactType;

    private String notes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Date getContactDate() {
        return contactDate;
    }

    public void setContactDate(Date contactDate) {
        this.contactDate = contactDate;
    }

    public String getContactType() {
        return contactType;
    }

    public void setContactType(String contactType) {
        this.contactType = contactType;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ContactTimeline that = (ContactTimeline) o;

        if (!id.equals(that.id)) return false;
        if (!client.equals(that.client)) return false;
        if (!user.equals(that.user)) return false;
        if (!contactDate.equals(that.contactDate)) return false;
        if (!contactType.equals(that.contactType)) return false;
        return notes.equals(that.notes);

    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + client.hashCode();
        result = 31 * result + user.hashCode();
        result = 31 * result + contactDate.hashCode();
        result = 31 * result + contactType.hashCode();
        result = 31 * result + notes.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "ContactTimeline{" +
                "id=" + id +
                ", client=" + client +
                ", user=" + user +
                ", contactDate=" + contactDate +
                ", contactType='" + contactType + '\'' +
                ", notes='" + notes + '\'' +
                '}';
    }
}
