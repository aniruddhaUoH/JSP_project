<%-- <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>View Users</title>
</head>
<body>

	<%@page
		import="com.alacriti.dao.UserDao,com.alacriti.bean.*,java.util.*"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<h1>Users List</h1>

	<%
		List<User> list=UserDao.getAllRecords();  
			request.setAttribute("list",list);
	%>

	<table class="responstable">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
			</tr>
		</c:forEach>
		<%
    	for(int i=0; i<list.size();i++){%>
		<tr>
			<td><%= ((User)list.get(i)).getId() %></td>
			<td><%= ((User)list.get(i)).getName() %></td>
			<td><%= ((User)list.get(i)).getPassword() %></td>
			<td><%= ((User)list.get(i)).getEmail() %></td>
			<td><%= ((User)list.get(i)).getSex() %></td>
		</tr>
		<%}%>
	</table>
	<br />
	<a href="adduserform.jsp">Add New User</a>

</body>
</html>

<%! List eList = (ArrayList)session.getAttribute("empList");%>

 --%>