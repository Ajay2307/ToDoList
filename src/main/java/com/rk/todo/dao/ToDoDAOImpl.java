package com.rk.todo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rk.todo.controller.HomeController;
import com.rk.todo.dto.ToDo;

@Repository
public class ToDoDAOImpl implements ToDoDAO {


	private static final Logger logger = LoggerFactory.getLogger(ToDoDAOImpl.class);

	
	@Autowired
	private SessionFactory sessionFactory;
	
	/**
	 * @param sessionFactory the sessionFactory to set
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int saveTask(ToDo todo) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		int result = 0;
		try {
			if (todo != null) {
				result = (Integer)session.save(todo);
				tx.commit();
				session.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in saving the task :");
			tx.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public List<ToDo> getTodo() {
		List<ToDo> todos = null;
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		try {
				todos = session.createCriteria(ToDo.class).list();
				tx.commit();
				session.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Error in saving the task :");
			tx.rollback();
			session.close();
		}
		
		return todos;
	}

}
