<%@page import="com.alacriti.dao.UserDao"%>
<jsp:useBean id="u" class="com.alacriti.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	int i = UserDao.register(u);
	if (i > 0) {
		response.sendRedirect("adduser-success.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}
%>
