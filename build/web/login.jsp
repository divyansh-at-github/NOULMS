
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NOULMS || LOGIN</title>

        <%@include file="linkmaster.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
            <!-- outer start-->
            <%@include file="headermaster.jsp" %> 

            <!-- About start -->

            <div class="row mt-5">

                <div class="col-sm-12 mb-3">
                    <h4 style="font-weight:bold;color:darkred;text-align: center">Login Form</h4>

                    <form action="logincode.jsp" method="post">
                        <table style="margin:0px auto; width: 50%;" class="table  table-borderless">
                            <tr>
                                <th>User id<sup style="color:red;">*</sup>:</th>
                                <td>
                                    <input type="text" name="userid"  required="true" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <th>Password :</th>
                                <td>
                                    <input type="password" name="pwd" required="true" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center">
                                    <input type="submit" value="LOGIN" class="btn btn-primary "/>
                                </td>
                            </tr>
                        </table>



                    </form>

                </div>
            </div>


            <!--About end -->
            <%@include file="footermaster.jsp" %>
            <!-- outer end-->
        </div>
    </body>
</html>
