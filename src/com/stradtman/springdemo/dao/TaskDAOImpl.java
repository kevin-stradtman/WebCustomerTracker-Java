package com.stradtman.springdemo.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;
import org.hibernate.Session;
import com.stradtman.springdemo.entity.Task;

@Repository
public class TaskDAOImpl implements TaskDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Task> getTasks() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Task> theQuery = currentSession.createQuery("from Task order by status", Task.class);
		List<Task> tasks = theQuery.getResultList();
		return tasks;
	}

	@Override
	public void saveTask(Task theTask) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theTask);
	}

	@Override
	public Task getTask(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Task theTask = currentSession.get(Task.class, theId);
		return theTask;
	}

	@Override
	public void deleteTask(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Task where id=:taskId");
		theQuery.setParameter("taskId", theId);
		theQuery.executeUpdate();
	}

}