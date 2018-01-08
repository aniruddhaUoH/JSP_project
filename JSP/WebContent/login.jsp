<%@page import="com.alacriti.dao.UserDao"%>
<jsp:useBean id="u" class="com.alacriti.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	String email = request.getParameter("email");
	boolean status = UserDao.login(u);
	if (status) {
		session.setAttribute("userEmail", email);
		response.sendRedirect("home.jsp");
	} else {
		response.sendRedirect("loginuser-error.jsp");
	}
%>