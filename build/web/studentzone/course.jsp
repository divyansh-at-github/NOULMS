
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>NOULMS || Student Zone</title>
       
       <%@include file="studentlinkmaster.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
         <!-- outer start-->
         <%@include file="studentheadermaster.jsp" %> 
           
             <!-- About start -->
             
             <div class="row mt-5">
                 
                 <div class="col-sm-12">
                     <h4>Course List</h4>
                     <table class="table table-bordered">
                             
                             <tr class="bg-danger">
                                 <th>Sr.no</th>
                                 <th>Course Name</th>
                                 <th>Course Type</th>
                                 <th> Course Duration</th>
                                 <th>Course Image</th>
                                 
                             </tr>
                          <tr>
                                 <%
                                 String cmd="select * from courseinfo";
                                 DbManager db=new DbManager();
                                 ResultSet rs=db.selectQuery(cmd);
                                 int n=1;
                                 while(rs.next())
                                 {
                                 %>
                            <tr class="bg-warning">
                                 
                                 <td><%=n %></td>
                                 <td><%=rs.getString("coursename")%></td>
                                 <td><%=rs.getString("coursetype")%></td>
                                 <td><%=rs.getString("courseduration")%></td>
                                <td>
                                    <img height="200px" width="300px" src="../uploadimage/<%=rs.getString("courseimage")%>"/>
                                </td>
                                
                            </tr>
                                 <%
                                     n++;
                                 }
                                 %>
                       
                                 
                         </table>
                     
                 </div>
             </div>
             
             
             <!--About end -->
             <%@include file="studentfootermaster.jsp" %>
              <!-- outer end-->
        </div>
    </body>
</html>
