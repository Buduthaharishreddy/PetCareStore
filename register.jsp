<html>
<head>
    <title>Register Page</title>
</head>

<body bgcolor="lightblue">

<center>

<h1>Pet Care Management System</h1>

<h2>Registration</h2>

<form action="register1.jsp" method="post">

<table border="1">

<tr>
<td>Name</td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td>Email</td>
<td><input type="text" name="email" required></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="password" required></td>
</tr>

<tr>
<td>Confirm Password</td>
<td><input type="password" name="cpassword" required></td>
</tr>

</table>

<br>

<input type="submit" value="Register">
<input type="reset" value="Clear">

</form>

<br>

<a href="login.jsp">Already have an account? Login</a>

</center>

</body>
</html>