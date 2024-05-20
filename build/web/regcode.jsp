<%@page import="connect.DbManager"%>
<%
String enrollmentno=request.getParameter("enrollmentno");

String name=request.getParameter("name");

String fname=request.getParameter("fname");

String mname=request.getParameter("mname");

String gender=request.getParameter("gender");

String address=request.getParameter("address");

String contactno=request.getParameter("contactno");

String emailaddress=request.getParameter("emailaddress");

String dob=request.getParameter("dob");

String aadharno=request.getParameter("aadharno");

String course=request.getParameter("course");

String year=request.getParameter("year");

String centername=request.getParameter("centername");

String pwd=request.getParameter("pwd");

//this query is used to insert record in database

String cmd="insert into studentinfo(enrollmentno,name,fname,mname,gender,address,contactno,emailaddress,dob,aadharno,course,year,centername,registrationdate,pwd) values('"+enrollmentno+"','"+name+"','"+fname+"','"+mname+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+dob+"','"+aadharno+"','"+course+"','"+year+"','"+centername+"',curdate(),'"+pwd+"')";
DbManager db=new DbManager();

boolean status=db.insertUpdateDelete(cmd);
if(status==true)
{
    %>
    
    <script>
        alert('Registration successfully submitted');
        window.location.href='registration.jsp';
    </script>
    
<%    
}
else
{
    
  %>
   <script>
        alert('Registration is not  successfully');
        window.location.href='registration.jsp';
    </script>
  <%
}

%>