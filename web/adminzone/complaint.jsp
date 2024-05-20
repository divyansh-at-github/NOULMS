
<%@page import="java.sql.ResultSet"%>
<!--
Admin  Zone ->complaint
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>NOULMS || Admin Zone</title>
       
       <%@include file="adminlinkmaster.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
         <!-- outer start-->
         <%@include file="adminheadermaster.jsp" %> 
           
             <!-- About start -->
             
             <div class="row mt-5">
                 
                 <div class="col-sm-12">
    
                     <h4 class="text-center text-primary">Complaint List </h4>
                     <table class="table table-bordered">
                         <tr class="bg-danger">
                             <th>Sr.no</th>
                             <th>Enrollment No.</th>
                             <th>Student Name</th>
                             <th>Subject</th>
                             <th>Complaint Text</th>
                             <th>Post Date</th>
                             <th>Status</th>
                             <th>Approve date</th>
                             <th>Update status</th>
                             <th>Delete</th>
                         </tr>
                         <%
                         String q="select * from complaint a left join studentinfo b on b.enrollmentno=a.enrollmentno ";
                         DbManager db=new DbManager();
                         ResultSet rs=db.selectQuery(q);
                         int n=1;
                         while(rs.next())
                         {
                         %>
                         <tr class="bg-info">
                             <td><%=n%></td>
                             <td><%=rs.getString("enrollmentno")%></td>
                             <td><%=rs.getString("name")%></td>
                             <td><%=rs.getString("subject")%></td>
                             <td><%=rs.getString("complainttext")%></td>
                             <td><%=rs.getString("posteddate")%></td>
                             <td><%=rs.getString("status")%></td>
                             <td><%=rs.getString("statusdate")%></td>
                             <td>
                                 <a  onclick="return confirm('Are you update complaint status ?')" href="updatestatus.jsp?id=<%=rs.getString("id") %>">Update status</a>
                             </td>
                             <td>
                                 <a onclick="return confirm('Are you sure do you want to delete record ?')" href="delcomplaint.jsp?id=<%=rs.getString("id") %>">Delete</a>
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
             <%@include file="adminfootermaster.jsp" %>
              <!-- outer end-->
        </div>
    </body>
</html>
