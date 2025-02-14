
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>NOULMS || Admin</title>
       
       <%@include file="adminlinkmaster.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
         <!-- outer start-->
         <%@include file="adminheadermaster.jsp" %> 
           
             <!-- About start -->
             
              <div class="row  mt-5">

                <div class="col-sm-12">
                    <h3 class=" text-center text-info"> Add Notification </h3>

                    <form  action="noticecode.jsp" method="post">
                        <table class="table table-bordered">
                            <tr>
                                <th>Enter Notification : </th>
                                <td>
                                    <textarea  name="ntext"  class="form-control"  required=""></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"  align="center">
                                    <input   type="submit" value="Submit"  class="btn btn-primary" />

                                </td>
                            </tr>

                        </table>

                        <br>

                        <h4 class="text-center" >Notification List</h4>
                        <br>
                        <table class="table table-hover table-bordereds">
                            <tr class="bg-warning">
                                <th>Sr.No</th>
                                <th>Notification Text</th>
                                <th>Posted Date</th>
                                <th>Delete</th>
                            </tr >
                            <%
                                String cmd = "select * from notification";
                                DbManager db = new DbManager();
                                ResultSet rs = db.selectQuery(cmd);
                                int n = 1;
                                while (rs.next()) {
                            %>
                            <tr class="bg-info">
                  <td><%=n%></td>
                  <td><%=rs.getString("ntext")  %></td>
                  <td><%=rs.getString("posteddate")  %></td>
                  <td>
                      <a onclick="return confirm('Are you sure do you want delete record ?')" href="delnotice.jsp?id=<%=rs.getString("nid") %>">Delete</a>
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
