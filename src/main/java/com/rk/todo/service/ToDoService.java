package com.rk.todo.service;

import java.util.List;

import com.rk.todo.dto.ToDo;

public interface ToDoService {
	Integer saveTask(ToDo todo);
	List<ToDo> getTodos();
}
