<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body class="text-white bg-dark">
	<div style="width:max-content; margin: 10% auto">
		<div class="container">
			<form action="loginuser" method="GET">
				<div class="form-group">
					<%
					String login_msg = (String) request.getAttribute("error");
					if (login_msg != null)
						out.println("<div class=\"alert alert-success\" role=\"alert\">" + login_msg + "</div>");
					String logout_msg = (String) request.getAttribute("logout");
					if (logout_msg != null)
						out.println("<div class=\"alert alert-danger\" role=\"alert\">" + logout_msg + "</div>");
					%>
					<label for="uname">User Name</label> <input type="text"
						class="form-control" id="uname" placeholder="Enter User Name"
						name="uname"> <small id="emailHelp"
						class="form-text text-muted">We'll never share your data
						with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="psw">Password</label> <input type="password"
						class="form-control" id="psw" placeholder="Password" name="psw">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div>

</body>
</html>