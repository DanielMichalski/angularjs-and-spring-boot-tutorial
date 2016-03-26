package pl.dmichalski.crm.business.company_sectors.control;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.dmichalski.crm.business.company_sectors.entity.CompanySector;

@Repository
public interface CompanyRepository extends JpaRepository<CompanySector, Integer> {
}
