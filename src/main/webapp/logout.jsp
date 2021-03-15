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
<body>

	<div class="text-white bg-dark" style="height:100%">
		<div class="container" style="width:max-content; margin: 10% auto">
			<h2>Dashboard</h2>
			<%
			out.println("<h2> Welcome " + request.getAttribute("name") + "</h2>");
			%>

			<form action="logout" method="GET">
				<input type="submit" value="Logout" class="btn btn-primary" />
			</form>
		</div>
	</div>

</body>
</html>