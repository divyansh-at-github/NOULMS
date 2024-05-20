
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
                     <h4>Change Password</h4>
                     
                     
                     <form action="passcode.jsp" method="post">
                         <table class="table table-bordered">
                             <tr>
                                 <th>Enter Old Password :</th>
                                 <td>
                                     <input type="password" name="oldpass" class="form-control" required=""/>
                                 </td>
                             </tr>
                             <tr>
                                 <th> Enter New Password :</th>
                                 <td>
                                     <input type="password" name="newpass" class="form-control" required=""/>
                                 </td>   
                             </tr>
                             <tr>
                                 
                                 <th>Re-Enter New Password :</th>
                                 <td>
                                     <input type="password" name="repass" class="form-control" required=""/>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="2" align="center">
                                     <input type="submit" value="Change Password" class="btn btn-primary"/>
                                 </td>
                             </tr>
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
