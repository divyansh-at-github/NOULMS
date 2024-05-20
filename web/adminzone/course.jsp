
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>NOULMS || Admin Zone</title>
       
       <%@include file="adminlinkmaster.jsp" %>
     
       <%
       if(request.getParameter("f")!=null)
       {
       if(request.getParameter("f").equals("1"))
       {
       %>
       <script>
           alert('Course Successfully Uploaded');
           window.location.href="course.jsp";
       </script>
       <%
       }
        else
       {
       %>
       <script>
           alert('Course is not Uploaded');
           window.location.href="course.jsp";
       </script>
       
       <%
       }
       }
       
       
       
       
       %>       
    </head>
    <body>
        <div class="container-fluid">
         <!-- outer start-->
         <%@include file="adminheadermaster.jsp" %> 
           
             <!-- About start -->
             
             <div class="row mt-5">
                 
                 <div class="col-sm-12">
                     <h4 class="text-center"> Upload Courses</h4>
                     <form action="../coursecode" method="post" enctype="multipart/form-data">
                         <table class="table table-bordered">
                             
                             <tr>
                                 <th>Enter Course Name : </th>
                                 <td>
                                     <input type="text" name="coursename" class="form-control" required=""/>
                                 </td>
                             </tr>
                             <tr>
                                 <th> Enter Course Type : </th>
                                 <td>
                                     <select name="coursetype" required="" class="form-control">
                                         <option value="">Select Course</option>
                                         <option>B.Tech</option>
                                         <option>BCA</option>    
                                         <option>Diploma</option>
                                         <option>MCA</option>
                                     </select>
                                 </td>
                             </tr>
                             <tr>
                                 <th>Enter Course Duration : </th>
                                 <td>
                                     <input type="text" name="cd" class="form-control" required=""/>
                                 </td>
                             </tr>
                             <tr>
                                 <th>Upload Image : </th>
                                 <td>
                                     <input type="file" class="form-control" required="" name="img"/>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                              <input type="submit" value="Submit" class="btn btn-primary"/>
                                 </td>
                             </tr>
                         </table>
                         <br>
                         <h4 class="text-center">Courses List</h4>
                         <br>
                         <table class="table table-bordered">
                             
                             <tr class="bg-danger">
                                 <th>Sr.no</th>
                                 <th>Course Name</th>
                                 <th>Course Type</th>
                                 <th> Course Duration</th>
                                 <th>Course Image</th>
                                 <th>Delete</th>
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
                                <td>
                                    <a  onclick=" return confirm('Are you sure do you want to delete record ?')" href="delcourse.jsp?id=<%=rs.getString("courseid")%>">Delete</a>
                                </td>
                            </tr>
                                 <%
                                     n++;
                                 }
                                 %>
                       
                                 
                         </table>
                         
                     </form>
                 </div>
             </div>
             
             
             <!--About end -->
             <%@include file="adminfootermaster.jsp" %>
              <!-- outer end-->
        </div>
    </body>
</html>
