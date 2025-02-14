
<%@page import="java.sql.ResultSet"%>
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
                     <h4>Feedback List</h4>
                     <br>
                     
                     <table class="table table-bordered " >
                             
                             <tr class="bg-dark text-light">
                                 <th>Sr.No.</th>
                                 <th>Enrollment No</th>
                                 <th> Student Name</th>
                                 <th>Subject</th>
                                 <th>Feedback Text</th>
                                 <th>Post Date</th>
                                 <th>Delete</th>
                             </tr>
                             <%
                             String cmd="select * from feedback a left join studentinfo b on a.enrollmentno=b.enrollmentno  ";
                             
                             DbManager db=new DbManager();
                             ResultSet rs=db.selectQuery(cmd);
                             int n=1;
                             while(rs.next())
                             {
                                 %>
                                 <tr class="bg-info">
                                     <td> <%=n %></td>
                                     <td><%=rs.getString("enrollmentno")%></td>
                                     <td><%=rs.getString("name")%></td>
                                     <td><%=rs.getString("subject")%></td>
                                     <td><%=rs.getString("feedbacktext")%></td>
                                     <td><%=rs.getString("posteddate")%></td>
                                     <td>
                                         <a onclick="return confirm('Are you sure  do you want to delete this record ?')" href="delfeedback.jsp?id=<%=rs.getString("id") %>">Delete</a>
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
