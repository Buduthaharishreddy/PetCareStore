<%@ include file="db.jsp" %>

<% 
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String cpassword = request.getParameter("cpassword");
	
	if(password.equals(cpassword)) {
		PreparedStatement ps = con.prepareStatement("insert into users(name,email,password) values(?,?,?)");
		
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,password);
		
		int i = ps.executeUpdate();
		
		if(i>0) {
			out.println("<h1><center>Registeration Sucessful<br>");
			out.println("<center><h3><a href='login.jsp'>Go to Login</a>");
		}
		else {
			out.println("Registeration Failed");
		}
	}
	else {
		out.println("Password and Confirm password are not matched");
	}
%>