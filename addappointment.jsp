<html>
<head>
    <title>Add Appointment</title>
</head>

<body bgcolor="lightblue">

<center>

<h1>Pet Care Management System</h1>

<h2>Book Appointment</h2>

<form action="addappointment1.jsp" method="post">

<table>

<tr>
<td>Pet Name</td>
<td><input type="text" name="petname" required></td>
</tr>

<tr>
<td>Owner Name</td>
<td><input type="text" name="owner" required></td>
</tr>

<tr>
<td>Veterinarian</td>
<td><input type="text" name="vet" required></td>
</tr>

<tr>
<td>Appointment Date</td>
<td>
<input type="date" name="appdate" min="<%=new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())%>" required>
</td>
</tr>

<td>Appointment Time</td>
<td>
<select name="apptime" required>
<option value="">Select Time</option>
<option value="10:00:00">10:00 AM</option>
<option value="10:30:00">10:30 AM</option>
<option value="11:00:00">11:00 AM</option>
<option value="11:30:00">11:30 AM</option>
<option value="12:00:00">12:00 PM</option>
<option value="12:30:00">12:30 PM</option>
<option value="13:00:00">1:00 PM</option>
<option value="13:30:00">1:30 PM</option>
<option value="14:00:00">2:00 PM</option>
<option value="14:30:00">2:30 PM</option>
<option value="15:00:00">3:00 PM</option>
<option value="15:30:00">3:30 PM</option>
<option value="16:00:00">4:00 PM</option>
</select>
</td>
</tr>

<tr>
<td>Reason</td>
<td><input type="text" name="reason" required></td>
</tr>

<tr>
<td>Status</td>
<td>
<select name="status" required>
<option value="">Select Status</option>
<option>Pending</option>
<option>Confirmed</option>
</select>
</td>
</tr>

</table>

<br>

<input type="submit" value="Book Appointment">
<input type="reset" value="Clear">

</form>

<br>

<a href="userPage.jsp">Back to User Page</a>

</center>

</body>
</html>