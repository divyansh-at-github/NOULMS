package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connect.DbManager;

public final class adminwelcome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/adminzone/adminlinkmaster.jsp");
    _jspx_dependants.add("/adminzone/adminheadermaster.jsp");
    _jspx_dependants.add("/adminzone/adminfootermaster.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <title>NOULMS || Admin Zone</title>\n");
      out.write("       \n");
      out.write("       ");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\"/>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\"/>\n");
      out.write("        <link href=\"css/logo.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"js/bootstrap.bundle.js\"></script>\n");
      out.write("        <link href=\"images/logo.png\" rel=\"icon\"/>\n");
      out.write("        <script>\n");
      out.write("            window.history.forward();\n");
      out.write("            function unload()\n");
      out.write("            {\n");
      out.write("            window.history.forward();\n");
      out.write("             }\n");
      out.write("              \n");
      out.write("        </script>\n");
      out.write("        ");

        
            if(session.getAttribute("adminid")==null)
            {
                response.sendRedirect("../login.jsp");
            }
                
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("         <!-- outer start-->\n");
      out.write("         ");
      out.write(" \n");
      out.write("<!-- headline start-->\n");
      out.write("            <div  style=\" background-color: #660000;\"class=\"row  text-light\">\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    Welcome to Admin Zone\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    ");
      out.print(new DbManager().getDate() );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    Admin\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("             <!-- headline end-->\n");
      out.write("              <!-- Header start -->\n");
      out.write("             <div class=\"row\">\n");
      out.write("                 <div class=\"col-sm-1\">\n");
      out.write("                     <img  class=\"w-100\" src=\"images/logo.png\"/>\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"col-sm-7\">\n");
      out.write("                     <h4>Nalanda eGyan Portal</h4>\n");
      out.write("                     <p>(An Initiative Taken By Nalanda Open University)</p>\n");
      out.write("                 </div>\n");
      out.write("                 <div class=\"col-sm-4\"></div>\n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("             <!-- Header end -->\n");
      out.write("             \n");
      out.write("             <!-- navbar start-->\n");
      out.write("             \n");
      out.write("             <div class=\"row\">\n");
      out.write("                 <div class=\"col-sm-12 p-0\">\n");
      out.write("                     <nav class=\"navbar navbar-expand-lg bg-light\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("      <a class=\"navbar-brand\" href=\"../index.jsp\">NOULMS</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" aria-current=\"page\" href=\"adminwelcome.jsp\">Dashboard</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"notification.jsp\"> Add Notification</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            Course\n");
      out.write("          </a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"course.jsp\"> Add Courses</a></li>\n");
      out.write("             <!-- <li><a class=\"dropdown-item\" href=\"studycenter.jsp\">Study Centers</a></li> -->\n");
      out.write("             <li><a class=\"dropdown-item\" href=\"usm.jsp\">Upload Study Material</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"feedback.jsp\"> Add Feedback</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"complaint.jsp\">Complaint</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"studentlist.jsp\">Student List</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"changepassword.jsp\">Change Password</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("                 </div>\n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("             <!-- navbar end-->\n");
      out.write("             ");
      out.write(" \n");
      out.write("           \n");
      out.write("             <!-- About start -->\n");
      out.write("             \n");
      out.write("             <div class=\"row mt-5\">\n");
      out.write("                 \n");
      out.write("                 <div class=\"col-sm-12\">\n");
      out.write("                     <h4>Welcome ! Admin Zone</h4>\n");
      out.write("                     \n");
      out.write("                 </div>\n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("             \n");
      out.write("             <!--About end -->\n");
      out.write("             ");
      out.write("  <!-- credit start-->\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-12 p-2  text-light text-center\" style=\"background-color: #660000;\">&COPY;Copyright 2022 Designed & Developed By | Divyansh verma</div>\n");
      out.write("            </div>\n");
      out.write("            <!-- credit end-->");
      out.write("\n");
      out.write("              <!-- outer end-->\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
