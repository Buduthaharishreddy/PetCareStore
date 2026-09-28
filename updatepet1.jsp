<%@ include file="db.jsp" %>

<%
String id = request.getParameter("id");
String petname = request.getParameter("petname");
String breed = request.getParameter("breed");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String owner = request.getParameter("owner");

PreparedStatement ps = con.prepareStatement(
    "update pets set petname=?, breed=?, age=?, gender=?, owner=? where id=?"
);

ps.setString(1, petname);
ps.setString(2, breed);
ps.setString(3, age);
ps.setString(4, gender);
ps.setString(5, owner);
ps.setString(6, id);

int i = ps.executeUpdate();

if(i > 0)
{
    out.println("Pet Updated Successfully");
    out.println("<br><a href='viewpet.jsp'>View Pets</a>");
}
else
{
    out.println("<center><h3>Pet Details Not Updated<br>");
	out.println("<a href='userPage.jsp'>Back to userPage</a>");
}
%>