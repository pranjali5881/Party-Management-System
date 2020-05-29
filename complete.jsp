<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body bgcolor="pink">
     <%
      Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root","");  
        PreparedStatement ps=con.prepareStatement("select * from user1 where fbill>0");
         
       
        ResultSet rs=ps.executeQuery();
        
        
       
        
        
        %>
        
<a href="adminhome.jsp"><h2>Home</h2></a>

<h2>USER INFO</h2>

<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Cetring</th>
    <th>Decoration</th>
    <th>CID</th>
    <th>DID</th>
    <th>Hall</th>
    <th>Date</th>
    <th>Fbill</th>
   <th>Event-Type</th>
    <th>Address</th>
    <th>Time</th>
    
    
  </tr>
  <%
        while(rs.next())
        {
            
            %>
        
  <tr>
    <td><%=rs.getInt(1)%></td>
    
  <td><%=rs.getString(2)%></td>
 
  <td><%=rs.getInt(3)%></td>
  <td><%=rs.getInt(4)%></td>
  
  <td><%=rs.getInt(5)%></td>
  <td><%=rs.getInt(6)%></td>
  <td><%=rs.getInt(7)%></td>
  <td><%=rs.getString(8)%></td>
  
  <td><%=rs.getInt(9)%></td>
 <td><%=rs.getString(10)%></td>
 <td><%=rs.getString(11)%></td>
 <td><%=rs.getString(12)%></td>
 
  </tr>
  <%
        }
        %>
        
</table>
       

</body>
</html>
