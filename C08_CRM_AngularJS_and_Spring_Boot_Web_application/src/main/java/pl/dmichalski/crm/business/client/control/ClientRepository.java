package pl.dmichalski.crm.business.client.control;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.dmichalski.crm.business.client.entity.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {
}
