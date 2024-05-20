        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <link href="css/style.css" rel="stylesheet"/>
        <link href="css/logo.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
        <link href="images/logo.png" rel="icon"/>
        <script>
            window.history.forward();
            function unload()
            {
            window.history.forward();
             }
              
        </script>
        <%
        
            if(session.getAttribute("adminid")==null)
            {
                response.sendRedirect("../login.jsp");
            }
                
        %>