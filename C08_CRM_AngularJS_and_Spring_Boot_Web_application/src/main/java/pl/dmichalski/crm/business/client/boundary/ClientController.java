package pl.dmichalski.crm.business.client.boundary;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.dmichalski.crm.business.client.control.ClientRepository;
import pl.dmichalski.crm.business.client.entity.Client;

import java.util.List;

@RestController
@RequestMapping("/api/clients")
public class ClientController {

    private ClientRepository clientRepository;

    @Autowired
    public ClientController(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }

    @RequestMapping
    public List<Client> findAllClients() {
        return clientRepository.findAll();
    }

}
