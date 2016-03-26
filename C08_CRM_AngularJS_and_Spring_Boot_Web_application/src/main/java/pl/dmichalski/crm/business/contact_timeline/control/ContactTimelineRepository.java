package pl.dmichalski.crm.business.contact_timeline.control;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.dmichalski.crm.business.contact_timeline.entity.ContactTimeline;

@Repository
public interface ContactTimelineRepository extends JpaRepository<ContactTimeline, Integer> {
}
