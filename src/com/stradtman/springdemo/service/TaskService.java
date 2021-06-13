package com.stradtman.springdemo.service;

import java.util.List;

import com.stradtman.springdemo.entity.Task;

public interface TaskService {

	List<Task> getTasks();

	void saveTask(Task theTask);

	Task getTask(int theId);

	void deleteTask(int theId);

}
