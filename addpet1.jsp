<%@ include file="db.jsp" %>

<%
	String petname = request.getParameter("petname");
	String breed = request.getParameter("breed");
	String age =  request.getParameter("age");
	String gender = request.getParameter("gender");
	String owner = request.getParameter("owner");
	
	if(petname.equals("") || breed.equals("") || age.equals("") || gender.equals("") || owner.equals(""))
	{
		out.println("All fields are required");
	}
	else {
	PreparedStatement ps = con.prepareStatement("insert into pets(petname,breed,age,gender,owner) values(?,?,?,?,?)");
	
	ps.setString(1,petname);
	ps.setString(2,breed);
	ps.setString(3,age);
	ps.setString(4,gender);
	ps.setString(5,owner);
	
	int i = ps.executeUpdate();
	if(i > 0) {
		out.println("<center>");
		out.println("<h3>Sucessufull add pet details</h3>");
		out.println("<br><a href='viewpet.jsp'>View Pets</a>");
	} else {
		out.println("pet not added");
	}
}
%>