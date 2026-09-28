<html>
<head>
	<title>Add Pet</title>
</head>
<body bgcolor="Lightblue">
	<center>
	<h1>Pet Care Management System</h1>
	<h2>Add Pet Details</h2>
	
	<form action="addpet1.jsp" method="post">
	<table border="1">
		<tr>
			<td>Pet Name</td>
			<td><input type="text" name="petname" required></td>
		</tr>
		
		<tr>
			<td>Bread</td>
			<td><input type="text" name="breed" required></td>
		</tr>
		
		<tr>
			<td>Age</td>
			<td><input type="number" name="age" min="0" required></td>
		</tr>
		
		<tr>
			<td>Gender</td>
			<td>
			
				<select name="gender" required>
				<option value="">Select Gender</option>
				<option>Male</option>
				<option>Female</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>Owner Name</td>
			<td><input type="text" name="owner" required></td>
		</tr>
	</form>	
	</table>
	
	<br>
		<input type="submit" value="Add Pet">
		<input type="reset" value="Clear">
		
	<br>
	<a href="userPage.jsp">Back to User Page</a>
	
	</center>	
		
</body>

</html>