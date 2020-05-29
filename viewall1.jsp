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
<body bgcolor="#D2B4DE">
     <%
      Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root","");  
        PreparedStatement ps=con.prepareStatement("select * from decoration");
         
       
        ResultSet rs=ps.executeQuery();
        
        
       
        
        
        %>
        
<a href="adminhome.jsp"><h2>Home</h2></a>

<h2>DECORATION INFO</h2>

<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Balloon</th>
    <th>Flower</th>
    <th>Wooden</th>
   
    
    
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
 
  </tr>
  <%
        }
        %>
        
</table>
       

</body>
</html>
