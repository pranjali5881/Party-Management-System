<%-- 
    Document   : adduser
    Created on : Oct 12, 2019, 11:14:59 PM
    Author     : P-Square
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
    <body>
        <%
            String pp=request.getParameter("party");
                int x=0;
                int y=0;
                int z=0;
                int m=0;
                int n=0;
                int o=0;
                int h=0;
            
            String name=request.getParameter("name");
              String adr=request.getParameter("adr");
              String time=request.getParameter("time");
              
            int id=Integer.parseInt(request.getParameter("id"));
            int cid=Integer.parseInt(request.getParameter("cid"));
            int did=Integer.parseInt(request.getParameter("did"));
             int veg=Integer.parseInt(request.getParameter("veg"));
              int non=Integer.parseInt(request.getParameter("non"));
               int starter=Integer.parseInt(request.getParameter("starter"));
            
            String cet[]=request.getParameterValues("item");
            int i,vegflag=0,nonflag=0,starterflag=0;
            
            for(i=0;i<cet.length;i++)
            {
                if(cet[i].equals("veg"))
                {
                    vegflag=1;
                }
                else if(cet[i].equals("non"))
                {
                    nonflag=1;
                    
                }
                else if(cet[i].equals("starter"))
                {
                    starterflag=1;
                }
            }
            String deco[]=request.getParameterValues("item1");
             int flag1=0,flag2=0,flag3=0;
            
            for(i=0;i<deco.length;i++)
            {
                if(deco[i].equals("ballon"))
                {
                    flag1=1;
                }
                else if(deco[i].equals("flower"))
                {
                    flag2=1;
                    
                }
                else if(deco[i].equals("wooden"))
                {
                    flag3=1;
                }
            }
            String hall=request.getParameter("hall");
            if(hall.equals("garden"))
            {
                h=3000;
            }
            else if(hall.equals("hall"))
            {
                h=4000;
            }
            else if(hall.equals("both"))
            {
                h=7000;
            }
             String date=request.getParameter("date");
             
            
           
            
            
            
            
            
            
            
            
            
        
         Class.forName("com.mysql.jdbc.Driver");  
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root",""); 
       
         PreparedStatement ps=(PreparedStatement)con.prepareStatement("select * from cetring where id=?");
         ps.setInt(1,cid);
         ResultSet rs=ps.executeQuery();
         if(rs.next())
         {
             x=rs.getInt(3);
               y=rs.getInt(4);
                 z=rs.getInt(5);
         }
          PreparedStatement ps1=(PreparedStatement)con.prepareStatement("select * from decoration where id=?");
         ps.setInt(1,did);
         ResultSet rs1=ps.executeQuery();
         if(rs1.next())
         {
             m=rs1.getInt(3);
               n=rs1.getInt(4);
                 o=rs1.getInt(5);
         }
         int cetbill=0,decobill=0;
         if(vegflag==1)
         {
             cetbill=cetbill+x*veg;
         }
          if(nonflag==1)
         {
             cetbill=cetbill+y*non;
         }
          if(starterflag==1)
         {
             cetbill=cetbill+z*starter;
         }
         
         
         
         
         if(flag1==1)
         {
             decobill=decobill+m;
         }
          if(flag2==1)
         {
             decobill=decobill+n;
         }
          if(flag3==1)
         {
             decobill=decobill+o;
         }
    
          
          int fbill=0;
          fbill=cetbill+decobill+h;
          
         PreparedStatement ps2=(PreparedStatement)con.prepareStatement("insert into user1 values(?,?,?,?,?,?,?,?,?,?,?,?)");
         ps2.setInt(1,id);
         ps2.setString(2,name);
         ps2.setInt(3,cetbill);
         ps2.setInt(4,decobill);
         ps2.setInt(5,cid);
         ps2.setInt(6,did);
         ps2.setInt(7,h);
         ps2.setString(8,date);
          ps2.setInt(9,0);
          ps2.setString(10,request.getParameter("party"));
          ps2.setString(11,adr);
          ps2.setString(12,time);
          ps2.executeUpdate();
          HttpSession hs=request.getSession(true);
          hs.setAttribute("fbill",fbill);
          hs.setAttribute("id",id);
          
                  
               
        %>
        
        <h2>Billing</h2>
        <a href="confa.jsp">CONFIRM</a><br>
        <a href="userhome.jsp">NOT-CONFIRM</a>

<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Address</th>
     <th>Event Type</th>
    <th>Catering bill</th>
    <th>Decoration bill</th>
    <th>Catering ID</th>
    <th>Decoration ID</th>
    <th>Hall bill</th>
    <th>Date</th>
    <th>Final Bill</th>
   
    
    
    
    
  </tr>
  
       
        
  <tr>
    <td><%=id%></td>

    
  <td><%=name%></td>
  <td><%=adr%></td>
  
  <td><%=pp%></td>
  
 
  <td><%=cetbill%></td>
  
  <td><%=decobill%></td>
  
  <td><%=cid%></td>
  <td><%=did%></td>
  <td><%=h%></td>
    <td><%=date%></td>
    <td><%=fbill%></td>
    
  
  </tr>
  
        
</table>

        
        
    </body>
</html>
