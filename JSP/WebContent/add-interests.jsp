<%@page import="com.alacriti.dao.UserDao"%>
<jsp:useBean id="u" class="com.alacriti.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	//String email = request.getParameter("email");
	int status = UserDao.addInterests(u);
	if (status > 0) {
		//session.setAttribute("userEmail", email);
		response.sendRedirect("add-interests-success.jsp");
	} else {
		response.sendRedirect("add-interests-error.jsp");
	}
%>