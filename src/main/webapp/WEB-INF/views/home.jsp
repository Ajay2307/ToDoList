<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">To Do List Using the SpringMVC
					and Hibernate</a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">RK</a></li>

			</ul>

		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="col-md-4">
			<form:form class="form-horizontal" modelAttribute="todo_object"
				method="post" action="${pageContext.request.contextPath}/home">
				<div class="form-group">
					<label for="email">Task:</label>
					<div>
						<form:input path="task" class="form-control" id="task"
							placeholder="Enter Task" />
					</div>
				</div>
				<div class="form-group">
					<label for="pwd">Description:</label>
					<div>
						<form:input path="description" class="form-control" id="desc"
							placeholder="Enter Description" />
						<form:hidden path="status" />
					</div>
				</div>

				<div class="form-group">
					<div>
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form:form>
		</div>
		<div class="col-md-8">

			<!-- Table -->
			<table class="table">
				<tr>
					<th>#</th>
					<th>Task</th>
					<th>Description</th>
					<th>Status</th>
					<th colspan="2">Operations</th>
				</tr>
				<c:forEach items="${tasks}" var="task">

					<tr>
						<td>${task.id}</td>
						<td>${task.task}</td>
						<td>${task.description}</td>
						<td>${task.status}</td>
						<c:url value="/home/delete/${task.id}" var="del_task" />
						<c:url value="/home/done/${task.id}" var="update_task" />
						<td><a href="${update_task}" class="btn btn-primary">Done</a></td>
						<td><a href="${del_task}" class="btn btn-danger">Delete</a></td>
						<c:remove var="del_task" />
						<c:remove var="update_task" />
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<!-- Scripts -->
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="${pageContext.request.contextPath}/bootstrap/js/jquery-3.3.1.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>
