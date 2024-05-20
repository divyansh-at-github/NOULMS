 
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
                     <h4>Complaint Form</h4>
                     <form action="complaintcode.jsp" method="post">
                         <table class="table table-bordered">
                             <tr>
                                 <th>Enter Subject :</th>
                                 <td>
                                     <input type="text" name="subject" required="" class="form-control"/>
                                 </td>
                             </tr>
                             <tr>
                                 <th>Enter Complaint Text :</th>
                                 <td>
                                     <textarea class="form-control" name="ctext" required=""></textarea>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2" align="center">
                                     <input type="submit" value="Submit" class=" btn btn-primary"/>
                                 </td>
                             </tr>
                             
                         </table>
                     </form>
                     <br>
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
                         </tr>
                         <%
                         String q="select * from complaint a left join studentinfo b on b.enrollmentno=a.enrollmentno where a.enrollmentno='"+session.getAttribute("studentid")+"'";
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
