package pl.dmichalski.crm.business.user.control;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.dmichalski.crm.business.user.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
}
