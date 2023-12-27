<%@include file="db.jsp" %>
<table align="center" border="1px">
<tr>
<th> Roll  </th>
<th> Name </th>
<th> Fees </th>
<th> Subject</th>
<th> Address </th>
<th> Update</th>
<th> Delete </th>
</tr>
<%
   String qr="select * from studentt";
   Statement st=con.createStatement();
   ResultSet rs= st.executeQuery(qr);
    if(rs.next())
    {
    	do
    	{
    		String roll=rs.getString("roll");
    		String name=rs.getString("name");
    		String fees=rs.getString("fees");
    		String subject=rs.getString("subject");
    		String address=rs.getString("address");
    		%>
    		   <tr>
    		   <form action="Update.jsp">
    		   <td><%=roll%><input type="hidden" name="roll" value="<%=roll%>" /></td>
    		   <td><input type="text" name="name" value="<%=name%>" /></td>
    		   <td><input type="number" name="fees" value="<%=fees%>" /></td>
    		   <td><input type="text" name="subject" value="<%=subject%>" /></td>
    		   <td><input type="text" name="address" value="<%=address%>" /></td>
    		   <td><input type="submit" value="Update" /></td>
    		   <td><a href="Delete.jsp?roll=<%=roll%>">Delete</a><td>
    		   </form>
    		   </tr>
    		   
    		  
    		<% 	
    	}
    	while(rs.next());
    }
    else
    {
    	out.println("no records found");
    }
%>


</table>