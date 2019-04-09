package com.rk.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rk.todo.dao.ToDoDAO;
import com.rk.todo.dto.ToDo;

@Service
public class ToDoServiceImpl implements ToDoService {

	
	@Autowired
	private ToDoDAO todo_dao;
	
	
	/**
	 * @param todo_dao the todo_dao to set
	 */
	public void setTodo_dao(ToDoDAO todo_dao) {
		this.todo_dao = todo_dao;
	}


	@Override
	public Integer saveTask(ToDo todo) {
		return this.todo_dao.saveTask(todo);
	}


	@Override
	public List<ToDo> getTodos() {
		return this.todo_dao.getTodo();
	}

}
