<%@include file="db.jsp" %>
<%
   String r=request.getParameter("roll");
   int roll=Integer.parseInt(r);
   String qr="delete from studentt where roll=?";
   PreparedStatement ps=con.prepareStatement(qr);
   ps.setInt(1, roll);
   int i=ps.executeUpdate();
   RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
   rd.include(request, response);
   if(i>0)
   {
   	out.println("student deleted sucessfully");
   }
   else
   {
   	out.println("something went wrong");
   }
   con.close();
%>