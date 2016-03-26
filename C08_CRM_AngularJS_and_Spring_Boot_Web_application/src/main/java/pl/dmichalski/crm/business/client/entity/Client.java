package pl.dmichalski.crm.business.client.entity;

import pl.dmichalski.crm.business.company_sectors.entity.CompanySector;
import pl.dmichalski.crm.business.user.entity.User;

import javax.persistence.*;

@Entity
@Table(name = "clients")
public class Client {

    @Id
    @GeneratedValue
    private Integer id;

    @Column(name = "company_name")
    private String companyName;

    @Column(name = "contact_name")
    private String contactName;

    @Column(name = "contact_phone")
    private String contactPhone;

    @Column(name = "contact_email")
    private String contactEmail;

    @ManyToOne
    @JoinColumn(name = "account_manager_id")
    private User user;

    private String notes;

    @ManyToOne
    @JoinColumn(name = "sector_id")
    private CompanySector companySector;

    public Integer getId() {
        return id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public String getContactName() {
        return contactName;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public User getUser() {
        return user;
    }

    public String getNotes() {
        return notes;
    }

    public CompanySector getCompanySector() {
        return companySector;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Client client = (Client) o;

        if (!id.equals(client.id)) return false;
        if (!companyName.equals(client.companyName)) return false;
        if (!contactName.equals(client.contactName)) return false;
        if (!contactPhone.equals(client.contactPhone)) return false;
        if (!contactEmail.equals(client.contactEmail)) return false;
        if (!user.equals(client.user)) return false;
        if (notes != null ? !notes.equals(client.notes) : client.notes != null) return false;
        return companySector.equals(client.companySector);

    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + companyName.hashCode();
        result = 31 * result + contactName.hashCode();
        result = 31 * result + contactPhone.hashCode();
        result = 31 * result + contactEmail.hashCode();
        result = 31 * result + user.hashCode();
        result = 31 * result + (notes != null ? notes.hashCode() : 0);
        result = 31 * result + companySector.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", companyName='" + companyName + '\'' +
                ", contactName='" + contactName + '\'' +
                ", contactPhone='" + contactPhone + '\'' +
                ", contactEmail='" + contactEmail + '\'' +
                ", user=" + user +
                ", notes='" + notes + '\'' +
                ", companySector=" + companySector +
                '}';
    }
}
