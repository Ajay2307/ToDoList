package com.rk.todo.dao;

import java.util.List;

import com.rk.todo.dto.ToDo;

public interface ToDoDAO {
	int saveTask(ToDo todo);
	List<ToDo> getTodo();
}
