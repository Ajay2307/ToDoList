package com.rk.todo.service;

import java.util.List;

import com.rk.todo.dto.ToDo;

public interface ToDoService {
	Integer saveTask(ToDo todo);
	List<ToDo> getTodos();
	Integer deleteTask(int task_id);
	Integer updateTask(int task_id);
	ToDo getTask(int task);
}
