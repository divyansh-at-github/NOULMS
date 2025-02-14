
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
           alert('Study Material Successfully Uploaded');
           window.location.href="usm.jsp";
       </script>
       <%
       }
        else
       {
       %>
       <script>
           alert('Study Material is not Uploaded');
           window.location.href="usm.jsp";
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
             
            <div class="row  mt-5">
                
                <div class="col-sm-12">
         <h3 style="font-weight:bold;">Upload Study Material</h3>
         <br>
         <form    action="../uploadmaterial" method="post" enctype="multipart/form-data">
             
             <table class="table table-bordered" >
                 <tr>
                      <th>Course Name :</th>
                      <td>
                          <select name="course" class="form-control" required="">
                              <option value="">Select Course</option>
                              <%
         String q="select * from courseinfo";
         DbManager db=new DbManager();
         ResultSet rs=db.selectQuery(q);
        while(rs.next())
        {
        %>
        <option value="<%=rs.getString("courseid") %>"><%=rs.getString("coursename") %></option>
        <%
        }
                                
                              %>
                              
                          </select>
                      </td>
                 </tr>
                 <tr>
                     <th>Year </th>
                     <td>
                         <select  name="year" class="form-control"  required="" >
                             <option value="">Select Year</option>
                             <option>First Year</option>
                             <option>Second Year</option>
                             <option>Third Year</option>
                             <option>Fourth Year</option>
                         </select>
                     </td>
                 </tr>
                 
                 <tr>
                     <th>Upload File :</th>
                     <td>
                         <input type="file"  name="file"  />
                     </td>
                 </tr>
                 
                 <tr>
                     <th colspan="2" align="center" >
                         <input type="submit" class="btn btn-primary" />
                     </th>
                 </tr>
             </table>
                              <br>
                              <table class="table table-bordered">
                         <tr class="bg-danger">
                         <th>Sr.No</th>
                         <th>Course Name</th>
                         <th>Year</th>
                         <th>File Name</th>
                         <th>Download</th>
                         <th>Upload Date</th>
                          <th>Delete</th>
                         </tr>
                         <%
                         
        String cmd="select b.coursename,a.* from studymaterial a left join courseinfo b on b.courseid=a.coursename";
        ResultSet row=db.selectQuery(cmd);
        int n=1;
        while(row.next())
        {
        %>
        <tr>
            <td><%=n %></td>
            <td><%=row.getString("coursename") %></td>
            <td><%=row.getString("year") %></td>
            <td><%=row.getString("filename") %></td>
            <td><%=row.getString("uploaddate") %></td>
            <td>
                <a  target="_blank" href="../uploadimage/<%=row.getString("filename") %>">Download</a>
            </td>
            <td>
                <a onclick="return confirm('Are you sure do you want to delete record ?')" href="delusm.jsp?id=<%=row.getString("id") %>">Delete</a>
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
