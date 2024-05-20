
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NOULMS || STUDENT REGISTRATION</title>

        <%@include file="linkmaster.jsp" %>
    </head>
    <body>
        <div class="container-fluid">

            <%@include file="headermaster.jsp" %> 

            <div class="row mt-5">

                <div class="col-sm-12">
                    <h4 class="text-center " style="color: #8b0000;">Student Registration</h4>
                    <form action="regcode.jsp" method="post">
                        <div class="row">
                            <!-- form input tag start -->
                            <div class="col-sm-6 mb-3">
                                <label for="enrollmentno" class="form-label">
                                    Enrollment No <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="enrollmentno" name="enrollmentno" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="name" class="form-label">
                                    Student Name <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="name" name="name" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="fname" class="form-label">
                                    Father's Name <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="fname" name="fname" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="mname" class="form-label">
                                    Mother's Name <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="mname" name="mname" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="gender" class="form-label">
                                    Gender <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="radio"  id="gender" name="gender" required="true" value="Male"/> Male
                                <input type="radio"  id="gender" name="gender" required="true" value="Female"/> Female
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="address" class="form-label">
                                    Full Address <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="address" name="address" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="contactno" class="form-label">
                                    Contact No. <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="contactno" name="contactno" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="emailaddress" class="form-label">
                                    Email Address <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="email" class="form-control" id="emailaddress" name="emailaddress" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="dob" class="form-label">
                                    DOB <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="date" class="form-control" id="dob" name="dob" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="aadharno" class="form-label">
                                    Aadhar No <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="aadharno" name="aadharno" required="true"/>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="course" class="form-label">
                                    Course <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <select class="form-control" name="course" id="course" required="true">
                                    <option value="">select</option>
                                    <option>MCA</option>
                                    <option>BCA</option>
                                    <option>B.Tech</option>
                                    <option>Diploma</option>
                                </select>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="year" class="form-label">
                                    Year <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <select class="form-control" name="year" id="year" required="true">
                                    <option value="">select</option>
                                    <option>First Year</option>
                                    <option>Second Year</option>
                                    <option>Third Year</option>
                                    <option>Fourth Year</option>
                                </select>
                            </div>

                            <div class="col-sm-6 mb-3">
                                <label for="centername" class="form-label">
                                    Center Name <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="text" class="form-control" id="centername" name="centername" required="true"/>
                            </div>
                            <div class="col-sm-6 mb-3">
                                <label for="password" class="form-label">
                                    Password <sup style="color: red; font-size: 15px">*</sup>
                                </label>
                                <input type="password" class="form-control" id="password" name="pwd" required="true"/>
                            </div>

                            <div class="col-sm-3">
                                <input type="submit" value="SUBMIT" class="btn btn-primary form-control" style="margin-top: 30px"/>
                            </div>
                            <!-- form input tag end -->

                        </div>

                    </form>

                </div>
            </div>



            <%@include file="footermaster.jsp" %>

        </div>
    </body>
</html>
