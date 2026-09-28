<%@ include file="db.jsp" %>

<%
String petname = request.getParameter("petname");
String owner = request.getParameter("owner");
String vet = request.getParameter("vet");
String appdate = request.getParameter("appdate");
String apptime = request.getParameter("apptime");
String reason = request.getParameter("reason");
String status = request.getParameter("status");

PreparedStatement ps = con.prepareStatement(
    "insert into appointments(petname,owner,vet,appdate,apptime,reason,status) values(?,?,?,?,?,?,?)"
);

ps.setString(1, petname);
ps.setString(2, owner);
ps.setString(3, vet);
ps.setString(4, appdate);
ps.setString(5, apptime);
ps.setString(6, reason);
ps.setString(7, status);

int i = ps.executeUpdate();

if(i > 0)
{
    out.println("<center>Appointment Booked Successfully");
    out.println("<center><br><a href='viewappointment.jsp'>View Appointments</a>");
}
else
{
    out.println("<center>Appointment Not Booked");
}
%>