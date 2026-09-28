<html>
<head>
    <title>Update Pet</title>
</head>

<body bgcolor="lightblue">

<center>

<h1>Pet Care Management System</h1>

<h2>Update Pet Details</h2>

<form action="updatepet1.jsp" method="post">

<table>

<tr>
<td>Pet ID</td>
<td><input type="text" name="id" required></td>
</tr>

<tr>
<td>Pet Name</td>
<td><input type="text" name="petname" required></td>
</tr>

<tr>
<td>Breed</td>
<td><input type="text" name="breed" required></td>
</tr>

<tr>
<td>Age</td>
<td><input type="number" name="age" min = "0" required></td>
</tr>

<tr>
<td>Gender</td>
<td>
<select name="gender" required>
<option value=''>Select gender</option>
<option>Male</option>
<option>Female</option>
</select>
</td>
</tr>

<tr>
<td>Owner Name</td>
<td><input type="text" name="owner" required></td>
</tr>

</table>

<br>

<input type="submit" value="Update Pet">
<input type="reset" value="Clear">

</form>

<br><br>

<a href="userPage.jsp">Back to User Page</a>

</center>

</body>
</html>