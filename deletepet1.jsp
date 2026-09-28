<%@ include file="db.jsp" %>

<%

	String id = request.getParameter("id");
	PreparedStatement ps = con.prepareStatement("delete from pets where id=?");
	
	ps.setString(1, id);

	
	int i = ps.executeUpdate();
	
	if(i > 0) {
		out.println("<center>Pet Deleted Successfully");
		out.println("<center><br><a href='viewpet.jsp'>View Pets</a>");
	}
	else {
		    out.println("<center>Pet Not Deleted");
	}
	
%>