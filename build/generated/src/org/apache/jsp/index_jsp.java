package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import connect.DbManager;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/linkmaster.jsp");
    _jspx_dependants.add("/headermaster.jsp");
    _jspx_dependants.add("/notice.jsp");
    _jspx_dependants.add("/footermaster.jsp");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>NOULMS || HOME</title>\r\n");
      out.write("\r\n");
      out.write("        ");
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
      out.write("              window.setTimeout(\"unload()\",10);\n");
      out.write("        </script>");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <!-- outer start-->\r\n");
      out.write("            ");
      out.write("<!-- headline start-->\n");
      out.write("<div class=\"row text-light\" style=\"background-color: #8b0000;\">\n");
      out.write("    <div class=\"col-sm-3\">\n");
      out.write("        Call us : +91 9555495916\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-3\"> Email : v.divyansh800@gmail.com</div>\n");
      out.write("    <div class=\"col-sm-6\"> Address :Lucknow, Uttar-pradesh , India</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<!-- headline end-->\n");
      out.write("<!-- Header start -->\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-sm-1\">\n");
      out.write("        <img  class=\"w-100\" src=\"images/logo.png\"/>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-7\">\n");
      out.write("        <h4>Nalanda eGyan Portal</h4>\n");
      out.write("        <p>(An Initiative Taken By Nalanda Open University)</p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\"></div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- Header end -->\n");
      out.write("\n");
      out.write("<!-- navbar start-->\n");
      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-sm-12 p-0\">\n");
      out.write("        <nav class=\"navbar navbar-expand-lg bg-light\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">NOULMS</a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"about.jsp\">About Us</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                                Course\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"course.jsp\">Courses</a></li>\n");
      out.write("                                <li><a class=\"dropdown-item\" href=\"studycenter.jsp\">Study Centers</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"registration.jsp\">Registration</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"contactus.jsp\">Contact Us</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"d-flex\" role=\"search\">\n");
      out.write("                        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                        <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- navbar end-->\n");
      out.write("<!-- slider start -->\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-sm-12 p-0\">\n");
      out.write("        <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-bs-ride=\"true\">\n");
      out.write("            <div class=\"carousel-indicators\">\n");
      out.write("                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"0\" class=\"active\" aria-current=\"true\" aria-label=\"Slide 1\"></button>\n");
      out.write("                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"1\" aria-label=\"Slide 2\"></button>\n");
      out.write("                <button type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide-to=\"2\" aria-label=\"Slide 3\"></button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("                <div class=\"carousel-item active\">\n");
      out.write("                    <img src=\"images/slider1.png\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images/slider2.jpg\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images/slider3.jpg\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"prev\">\n");
      out.write("                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"visually-hidden\">Previous</span>\n");
      out.write("            </button>\n");
      out.write("            <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"next\">\n");
      out.write("                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                <span class=\"visually-hidden\">Next</span>\n");
      out.write("            </button>\n");
      out.write("        </div>  \n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- slider end -->");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("            <!-- About start -->\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row mt-5\">\r\n");
      out.write("                <div class=\"col-sm-4 border p-0\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"bg-danger text-light  p-1 rounded-2 text-center\">\r\n");
      out.write("                        <h4>Notice Board</h4>\r\n");
      out.write("                        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<marquee direction=\"up\" behavior=\"scroll\"  height=\"300px\" onmousemove=\"this.stop()\" onmouseout=\"this.start()\" scrollamount=\"6\">\n");
      out.write("    <ul style=\"list-style:none;\">\n");
      out.write("        ");

            String cmd = "select * from notification";
            DbManager db = new DbManager();
            ResultSet rs = db.selectQuery(cmd);
            while (rs.next()) {
        
      out.write("\n");
      out.write("        <li><img src=\"images/NEWIMG.gif\"/>");
      out.print(rs.getString("ntext"));
      out.write("</li>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("</marquee>\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-sm-8\">\r\n");
      out.write("                    <h4>About Nalanda Open University</h4>\r\n");
      out.write("                    <p>\r\n");
      out.write("                        The Nalanda Open University is the only University in\r\n");
      out.write("                        the State of Bihar meant for imparting learning\r\n");
      out.write("                        exclusively through the system of distance education.\r\n");
      out.write("                        The University was established in March, 1987 by an\r\n");
      out.write("                        ordinance, promulgated by the Government of Bihar.\r\n");
      out.write("                        Later, Nalanda Open University Act, 1995 was passed by\r\n");
      out.write("                        the Bihar Legislature, replacing the Ordinance, and the\r\n");
      out.write("                        University came under the authority and jurisdiction of\r\n");
      out.write("                        the new Act automatically. The University is named after\r\n");
      out.write("                        the famous Nalanda University of Ancient India.\r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--About end -->\r\n");
      out.write("            ");
      out.write("<!-- footer start-->\n");
      out.write("\n");
      out.write("<div class=\"row py-4 \" style=\"background-color: #8b0000; padding: 0 176px;\">\n");
      out.write("    <div class=\"col-sm-3  text-center text-light\">\n");
      out.write("        <a href=\"index.jsp\">\n");
      out.write("            <img src=\"images/logo.png\" class=\"bg-light\" style=\"border:4px solid yellow; border-radius:50%; width:100px\"/>\n");
      out.write("        </a>\n");
      out.write("        <p style=\"text-align:justify; font-size:0.8rem ;\">\n");
      out.write("            Nalanda Open University is a State Open University duly established under the Act of Bihar Government and is also recognized by Distance Education Council, IGNOU, Maidan Garhi, New Delhi.\n");
      out.write("        </p>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-3 text-light\">\n");
      out.write("        <h5>Useful Links</h5>\n");
      out.write("        <span class=\"animate-border border-black mb-4\"></span>\n");
      out.write("        <ul style=\"list-style: none\">\n");
      out.write("            <li><a href=\"index.jsp\" class=\"navbar-brand\">Home</a></li>\n");
      out.write("            <li><a href=\"about.jsp\" class=\"navbar-brand\">About Portal</a></li>\n");
      out.write("            <li><a href=\"#\" class=\"navbar-brand\">Services</a></li>\n");
      out.write("            <li><a href=\"contactus.jsp\" class=\"navbar-brand\">Contact us</a></li>\n");
      out.write("            <li><a href=\"course.jsp\" class=\"navbar-brand\">Courses</a></li>\n");
      out.write("            <li><a href=\"studycenter.jsp\" class=\"navbar-brand\">Study Center</a></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-3 text-light\">\n");
      out.write("        <h5>Contact Info</h5>\n");
      out.write("        <h6>&#128681 NOU</h6>\n");
      out.write("        <p>2nd/3rd Floor, Biscomaun Bhawan, Gandhi Maidan, Patna 800 001 (BIHAR).</p>\n");
      out.write("        <br>\n");
      out.write("        <h6>&#9743 +91 9555495916</h6>\n");
      out.write("        <p>Give us a call</p>\n");
      out.write("    </div>        \n");
      out.write("    <div class=\"col-sm-3 text-light\">\n");
      out.write("        <h5>Subscribe</h5>\n");
      out.write("        <p>Fill the detail below to receive the manual of the NOU e-Gyan Portal</p>\n");
      out.write("        <form action=\"#\">\n");
      out.write("            <div class=\"form-row\">\n");
      out.write("                <div class=\"col dk-footer-form\">\n");
      out.write("                    <input type=\"email\" class=\"form-control\" placeholder=\"Email Address\">\n");
      out.write("                    <button type=\"button\" class=\"btn  mt-2 btn-warning\">&#10148</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!--footer end-->\n");
      out.write("<!-- credit start-->\n");
      out.write("<div class=\"row\">\n");
      out.write("    <div class=\"col-sm-12 p-2  text-light text-center\" style=\"background-color: #660000;\">&COPY;Copyright 2022 Designed & Developed By | Divyansh verma</div>\n");
      out.write("</div>\n");
      out.write("<!-- credit end-->");
      out.write("\r\n");
      out.write("            <!-- outer end-->\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
