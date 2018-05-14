package com.rk.todo.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rk.todo.dto.ToDo;
import com.rk.todo.service.ToDoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ToDoService todo_service;
	
	/**
	 * @param todo_service the todo_service to set
	 */
	public void setTodo_service(ToDoService todo_service) {
		this.todo_service = todo_service;
	}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mav = new ModelAndView();
		
		ToDo to = new ToDo();
		to.setStatus("ToDo");
		
		mav.addObject("todo_object", to);
		List<ToDo> tasks = todo_service.getTodos();
		
		mav.addObject("tasks", tasks);
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.POST )
	public String insertTask(Model model, @ModelAttribute(name = "todo_object")ToDo todo) {
		int result = todo_service.saveTask(todo);
		logger.info("Task id : "+ result);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/home/delete/{task_id}", method = RequestMethod.GET )
	public String deleteTask(Model model, @PathVariable(name="task_id", required = true)int task_id) {
		int result = todo_service.deleteTask(task_id);
		logger.info("Task id : "+ result);
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/home/done/{task_id}", method = RequestMethod.GET )
	public String doneTask(Model model, @PathVariable(name="task_id", required = true)int task_id) {
		int result = todo_service.updateTask(task_id);
		logger.info("Task id : "+ result);
		return "redirect:/home";
	}
}
