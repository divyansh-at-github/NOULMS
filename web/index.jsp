
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NOULMS || HOME</title>

        <%@include file="linkmaster.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
            <!-- outer start-->
            <%@include file="headermaster.jsp" %> 

            <!-- About start -->

            <div class="row mt-5">
                <div class="col-sm-4 border p-0">

                    <div class="bg-danger text-light  p-1 rounded-2 text-center">
                        <h4>Notice Board</h4>
                        <%@include file="notice.jsp" %>

                    </div>
                </div>
                <div class="col-sm-8">
                    <h4>About Nalanda Open University</h4>
                    <p>
                        The Nalanda Open University is the only University in
                        the State of Bihar meant for imparting learning
                        exclusively through the system of distance education.
                        The University was established in March, 1987 by an
                        ordinance, promulgated by the Government of Bihar.
                        Later, Nalanda Open University Act, 1995 was passed by
                        the Bihar Legislature, replacing the Ordinance, and the
                        University came under the authority and jurisdiction of
                        the new Act automatically. The University is named after
                        the famous Nalanda University of Ancient India.
                    </p>
                </div>
            </div>
            <!--About end -->
            <%@include file="footermaster.jsp" %>
            <!-- outer end-->
        </div>
    </body>
</html>
