<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<h2>You are successfully logged in...!!</h2>
	<h4>
		<%
			String userEmail = session.getAttribute("userEmail").toString();
			out.print("User's email is: " + userEmail);
		%>
	</h4>
	<%
		Cookie cookie = new Cookie("email", userEmail);
		cookie.setMaxAge(60 * 60 * 24);
		response.addCookie(cookie);

		Cookie[] cookies = null;

		// Get an array of Cookies associated with the this domain
		cookies = request.getCookies();

		if (cookies != null) {
			out.println("<h2> Found Cookies Name and Value</h2>");

			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];
				out.print("Name : " + cookie.getName() + ",  ");
				out.print("Value: " + cookie.getValue() + " <br/>");
			}
		} else {
			out.println("<h2>No cookies founds</h2>");
		}
	%>
	<%
		Date date = new Date();
		out.print("<h3>" + date.toString() + "</h3>");
	%>
	<a href="logout.jsp">logout</a>
	<br>
	<a href="download.jsp">Download text file</a>

	<form action="add-interests.jsp" method="post">
		<input type="hidden" name="email" value="<%=session.getAttribute("userEmail")%>" />
		<p>
			<label for="interests" class="interests"> Interests </label> <input id="interests"
				name="interests" type="text" />
		</p>
		<p>
			<button type="submit" class="btn btn-primary">Add Interests</button>
		</p>
	</form>
</body>
</html>