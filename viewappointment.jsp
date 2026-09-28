<%@ include file="db.jsp" %>

<html>
<head>
    <title>View Appointments</title>
</head>

<body bgcolor="lightblue">

<center>

<h1>Pet Care Management System</h1>

<h2>Appointment Details</h2>

<table border="1">

<tr>
<th>ID</th>
<th>Pet Name</th>
<th>Owner</th>
<th>Veterinarian</th>
<th>Date</th>
<th>Time</th>
<th>Reason</th>
<th>Status</th>
</tr>

<%
PreparedStatement ps = con.prepareStatement("select * from appointments");

ResultSet rs = ps.executeQuery();

while(rs.next())
{
%>

<tr>
<td><%=rs.getInt("id")%></td>
<td><%=rs.getString("petname")%></td>
<td><%=rs.getString("owner")%></td>
<td><%=rs.getString("vet")%></td>
<td><%=rs.getString("appdate")%></td>
<td><%=rs.getString("apptime")%></td>
<td><%=rs.getString("reason")%></td>
<td><%=rs.getString("status")%></td>
</tr>

<%
}
%>

</table>

<br>

<a href="addappointment.jsp">Book Another Appointment</a>

<br><br>

<a href="UserPage.jsp">Back to User Page</a>

</center>

</body>
</html>