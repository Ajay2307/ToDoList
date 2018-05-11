<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<form class="form-horizontal" action="/action_page.php">
				<div class="form-group">
					<label for="email">Task:</label>
					<div>
						<input type="email" class="form-control" id="task"
							placeholder="Enter Task">
					</div>
				</div>
				<div class="form-group">
					<label for="pwd">Description:</label>
					<div>
						<textarea class="form-control" id="desc"
							placeholder="Enter Description"></textarea>
					</div>
				</div>

				<div class="form-group">
					<div>
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-8">

			<!-- Table -->
			<table class="table">
				<tr>
					<th>#</th>
					<th>Task</th>
					<th>Description</th>
					<th>Status</th>

				</tr>
				<tr>
					<th>1</th>
					<th>Abc</th>
					<th>To Do</th>
					<th>Adchjsd</th>
				</tr>
				<tr>
					<th>1</th>
					<th>Abc</th>
					<th>To Do</th>
					<th>Adchjsd</th>
				</tr>
				<tr>
					<th>1</th>
					<th>Abc</th>
					<th>To Do</th>
					<th>Adchjsd</th>
				</tr>
				<tr>
					<th>1</th>
					<th>Abc</th>
					<th>To Do</th>
					<th>Adchjsd</th>
				</tr>
				<tr>
					<th>1</th>
					<th>Abc</th>
					<th>To Do</th>
					<th>Adchjsd</th>
				</tr>
				<tr>
					<th>1</th>
					<th>Abc</th>
					<th>To Do</th>
					<th>Adchjsd</th>
				</tr>
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
