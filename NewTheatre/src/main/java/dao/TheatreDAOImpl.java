package dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import entity.User;

public class TheatreDAOImpl implements TheatreDAO{
	
	private SessionFactory sessionFactory;
	
	public TheatreDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

	
	
	public Long addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.beginTransaction();
        Long result = (Long) session.save(user);
        session.getTransaction().commit();
        return result;
    }
	
	
	
	public User getUser(String userLogin, String userPass){
		Session session = this.sessionFactory.getCurrentSession();
		session.beginTransaction();
		Criteria userCriteria = session.createCriteria(User.class);
        userCriteria.add(Restrictions.eq("userLogin", userLogin));
        userCriteria.add(Restrictions.eq("userPass", userPass));
        User user = (User) userCriteria.uniqueResult();
        session.getTransaction().commit();
		return user;
	}

}
