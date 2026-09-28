<%@ include file="db.jsp" %>

<html>
<head>
    <title>View Pets</title>
</head>

<body bgcolor="lightblue">

<center>

<h1>Pet Care Management System</h1>

<h2>Pet Details</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Pet Name</th>
<th>Breed</th>
<th>Age</th>
<th>Gender</th>
<th>Owner</th>
</tr>

<%
PreparedStatement ps = con.prepareStatement("select * from pets");

ResultSet rs = ps.executeQuery();

while(rs.next())
{
%>

<tr>
<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("petname")%></td>
<td><%=rs.getString("breed")%></td>
<td><%=rs.getInt("age")%></td>
<td><%=rs.getString("gender")%></td>
<td><%=rs.getString("owner")%></td>
</tr>

<%
}
%>

</table>
<br>
<br>
<a href="userPage.jsp">Back to User Page</a>

</center>

</body>
</html>