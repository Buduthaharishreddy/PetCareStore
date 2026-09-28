<%@ include file="db.jsp" %>

<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	PreparedStatement ps = con.prepareStatement("select *from users where email=? and password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	
	ResultSet rs = ps.executeQuery();
	
	if(rs.next()) {
		response.sendRedirect("userPage.jsp");
	} else {
		out.println("<center><h3>Invalid Email or Passowrd");
		out.println("<br><br><center><a href='login.jsp'>Go back</a>");
	}
%>