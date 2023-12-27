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
String qr="update studentt set name=?,fees=?,subject=?,address=? where roll=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setInt(5, roll);
ps.setString(1, name);
ps.setInt(2, fees);
ps.setString(3, subject);
ps.setString(4, address);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
rd.include(request, response);

if(i>0)
{
	out.println("student update sucessfully");
}
else
{
	out.println("something went wrong");
}
con.close();
%>