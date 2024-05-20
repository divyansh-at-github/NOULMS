
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
           
             <!-- Cards start -->
             
             <div class="row mt-3">
                 
                 <div class="col-sm-12">
                    <!-- <h4 class="text-center text-primary">Welcome ! Student Zone</h4> -->
                     <div class="row m-3">
                         <div class="col-sm-4">
                             <!--card1 start -->
                             <div class="card" style="width: 18rem;">
                                 <img src="images/bag.png" class="card-img-top" alt="...">
  <div class="card-body">
    
    <p class="card-text"></p>
    <a href="feedback.jsp" class="ms-5  btn btn-primary">Feedback</a>
  </div>
</div>
                             <!--card1 end -->
                         </div>
                         <div class="col-sm-4">
                             <!--card2  start-->
                             <div class="card" style="width: 18rem;">
                                 <img src="images/bcom.png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
   
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
                             <!--card2 end -->
                         </div>
                         <div class="col-sm-4">
                             <!--card3 start -->
                             <div class="card" style="width: 18rem;">
                                 <img src="images/bba.png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
                             <!--card3 end -->
                         </div>
                     </div>
                      <div class="row m-3">
                         <div class="col-sm-4">
                             <!--card4 start -->
                             <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
                             <!--card4 end -->
                         </div>
                         <div class="col-sm-4">
                             <!--card5 start -->
                             <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
                             <!--card5 end -->
                         </div>
                         <div class="col-sm-4">
                             <!--card6  start-->
                             <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
                             <!--card6 end -->
                         </div>
                     </div>
                 </div>
             </div>
         
             <!--Cards end -->
             <%@include file="studentfootermaster.jsp" %>
              <!-- outer end-->
        </div>
    </body>
</html>
