package pl.dmichalski.crm.business.company_sectors.boundary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import pl.dmichalski.crm.business.company_sectors.control.CompanyRepository;
import pl.dmichalski.crm.business.company_sectors.entity.CompanySector;

import java.util.List;

@RestController
@RequestMapping("/api/companies")
public class CompanyController {

    private CompanyRepository companyRepository;

    @Autowired
    public CompanyController(CompanyRepository companyRepository) {
        this.companyRepository = companyRepository;
    }

    @RequestMapping
    public List<CompanySector> findAllCompanySectors() {
        return companyRepository.findAll();
    }

}
