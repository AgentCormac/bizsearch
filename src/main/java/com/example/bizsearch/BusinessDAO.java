package com.example.bizsearch;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@SuppressWarnings({ "unchecked", "rawtypes" })
public class BusinessDAO {

	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * @Transactional annotation below will trigger Spring Hibernate transaction
	 *                manager to automatically create a hibernate session. See
	 *                src/main/webapp/WEB-INF/servlet-context.xml
	 */
	@Transactional
	public List<Business> findAll() {
		Session session = sessionFactory.getCurrentSession();

		/** trying suggestion by Buddy **** */
		List people = session.createQuery("Select p from Business p").list();
		return people;
	}

	/**
	 * @Transactional annotation below will trigger Spring Hibernate transaction
	 *                manager to automatically create a hibernate session. See
	 *                src/main/webapp/WEB-INF/servlet-context.xml
	 */
	@Transactional
	public List<Business> findSome(String city, String county, String category) {
		Session session = sessionFactory.getCurrentSession();

		String where = "";
		if (city.length() > 0) {
			where += ("city like '" + city + "'");
		}
		if (county.length() > 0) {
			where += ((where.length() > 0 ? " AND " : "") + "county like '"
					+ county + "'");
		}
		if (category.length() > 0) {
			where += ((where.length() > 0 ? " AND " : "") + "category like '"
					+ category + "'");
		}
		if (where.length() > 0) {
			where = ("where " + where);
		}

		/** trying suggestion by Buddy **** */
		List people = session.createQuery("Select p from Business p " + where)
				.list();
		return people;
	}

}