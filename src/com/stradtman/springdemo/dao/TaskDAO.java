package com.stradtman.springdemo.dao;

import java.util.List;

import com.stradtman.springdemo.entity.Task;

public interface TaskDAO {

	List<Task> getTasks();

	void saveTask(Task theTask);

	Task getTask(int theId);

	void deleteTask(int theId);

}
