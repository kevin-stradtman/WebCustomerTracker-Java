package com.stradtman.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stradtman.springdemo.entity.Task;
import com.stradtman.springdemo.service.TaskService;

@Controller
@RequestMapping("/task")
public class TaskController {
	@Autowired
	private TaskService taskService;
	
	@GetMapping("/list")
	public String listTasks(Model theModel) {
		List<Task> theTasks = taskService.getTasks();
		theModel.addAttribute("tasks", theTasks);
		return "list-tasks";
	}
	
	@GetMapping("/showFormForAddTask")
	public String showFormForAddTask(Model theModel) {
		Task theTask = new Task();
		theModel.addAttribute("task", theTask);
		return "task-form";
	}
	
	@PostMapping("/saveTask")
	public String saveTask(@ModelAttribute("task") Task theTask) {
		taskService.saveTask(theTask);
		return "redirect:/task/list";
	}
	
	@GetMapping("/showFormForUpdateTask")
	public String showFormForUpdateTask(@RequestParam("taskId") int theId, Model theModel) {
		Task theTask = taskService.getTask(theId);
		theModel.addAttribute("task", theTask);
		return "task-form";
	}
	
	@GetMapping("/deleteTask")
	public String deleteTask(@RequestParam("taskId") int theId) {
		taskService.deleteTask(theId);
		return "redirect:/task/list";
	}
}
