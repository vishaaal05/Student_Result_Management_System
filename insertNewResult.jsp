<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String rollNo=request.getParameter("rollNo");
String physics=request.getParameter("physics");
String chemistry=request.getParameter("chemistry");
String mathematics=request.getParameter("mathematics");
String english=request.getParameter("english");
String hindi=request.getParameter("hindi");
String computer_science=request.getParameter("computer_science");
String physical_education=request.getParameter("physical_education");
try{
   Connection con=ConnectionProvider.getCon();
   Statement st=con.createStatement();
   st.executeUpdate("insert into result values('"+rollNo+"','"+physics+"','"+chemistry+"','"+mathematics+"','"+english+"','"+hindi+"','"+computer_science+"','"+physical_education+"' )");
   response.sendRedirect("adminHome.jsp");
   }
   catch(Exception e)
   {
	   out.println(e);
   }
%>