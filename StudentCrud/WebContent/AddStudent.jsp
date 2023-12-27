<%@include file="db.jsp" %>
<%
String r=request.getParameter("roll");
int roll=Integer.parseInt(r);
String name=request.getParameter("name");
String f=request.getParameter("fees");
int fees=Integer.parseInt(f);
String subject=request.getParameter("subject");
String address=request.getParameter("address");
%>
<%
String qr="insert into studentt values(?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setInt(1, roll);
ps.setString(2, name);
ps.setInt(3, fees);
ps.setString(4, subject);
ps.setString(5, address);
int i=ps.executeUpdate();
if(i>0)
{
	out.println("student added sucessfully");
}
else
{
	out.println("something went wrong");
}
con.close();
%>