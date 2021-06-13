package com.stradtman.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stradtman.springdemo.dao.TaskDAO;
import com.stradtman.springdemo.entity.Task;

@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskDAO taskDAO;
	
	@Override
	@Transactional
	public List<Task> getTasks() {
		return taskDAO.getTasks();
	}

	@Override
	@Transactional
	public void saveTask(Task theTask) {
		taskDAO.saveTask(theTask);
	}

	@Override
	@Transactional
	public Task getTask(int theId) {
		return taskDAO.getTask(theId);
	}

	@Override
	@Transactional
	public void deleteTask(int theId) {
		taskDAO.deleteTask(theId);
	}

}

