package org.sadr.share.main.meeting.meeting;

import org.sadr._core.meta.generic.GenericDaoImpl;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 *
 * @author masoud
 */
@Repository
@Component
public class MeetingDaoImp extends GenericDaoImpl<Meeting> implements MeetingDao {
}
