
<!-- 

Student Zone -> feedback form

-->
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
                     <h4>Feedback Form</h4>
                     <form action="feedbackcode.jsp" method="post">
                         <table class="table table-bordered" style="height:250px;">
                             <tr>
                                 <th>Enter Subject :</th>
                                 <td>
                                     <input type="text" class="form-control" name="subject" required="true"/>
                                 </td>
                             </tr>
                             <tr>
                                 <th>Enter Feedback Text :</th>
                                 <td>
                                     <textarea  class="form-control" name="ftext" required="true"></textarea>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2" align="center">
                                     <input type="submit" class="btn btn-primary" value="Feedback Submit"/>
                                 </td>
                             </tr>
                         </table>
                         <br>
                         <table class="table table-bordered " >
                             
                             <tr class="bg-dark text-light">
                                 <th>Sr.No.</th>
                                 <th>Enrollment No</th>
                                 <th> Student Name</th>
                                 <th>Subject</th>
                                 <th>Feedback Text</th>
                                 <th>Post Date</th>
                             </tr>
                             <%
                             String cmd="select * from feedback a left join studentinfo b on a.enrollmentno=b.enrollmentno where a.enrollmentno='"+session.getAttribute("studentid")+"' ";
                             
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
                                 </tr>
                                 
                                 <%
                             n++;
                             }
                             %>
                         </table>
                         <div style="height:300px">
                         </div>
                     </form>
                     
                     
                 </div>
             </div>
             
             
             <!--About end -->
             <%@include file="studentfootermaster.jsp" %>
              <!-- outer end-->
        </div>
    </body>
</html>
