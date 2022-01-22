package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beans.User;
import service.UserService;

public final class sign_0020in_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Title -->\n");
      out.write("    <title>Create new account | Graindashboard UI Kit</title>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"public/img/favicon.ico\">\n");
      out.write("\n");
      out.write("    <!-- Template -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"public/graindashboard/css/graindashboard.css\">\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body class=\"\">\n");
      out.write("\n");
      out.write("    <main class=\"main\">\n");
      out.write("\n");
      out.write("      <div class=\"content\">\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"container-fluid pb-5\">\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"row justify-content-md-center\">\n");
      out.write("\t\t\t\t\t<div class=\"card-wrapper col-12 col-md-4 mt-5\">\n");
      out.write("\t\t\t\t\t\t<div class=\"brand text-center mb-3\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"/\"><img src=\"public/img/logo.png\"></a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"card\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card-body\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4 class=\"card-title\">Create new account</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<form action=\"UserController\" method=\"POST\">\n");
      out.write("\n");
      out.write("                                                        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                                        <label>Username</label>\n");
      out.write("                                                        <input required=\"\" type=\"text\" class=\"form-control p_input\" name=\"nom\" id=\"nom\" />\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                                                        <label>prenom</label>\n");
      out.write("                                                        <input required=\"\" type=\"text\" class=\"form-control p_input\" name=\"prenom\" id=\"prenom\" />\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"form-group\">\n");
      out.write("                                                        <label>Email</label>\n");
      out.write("                                                        <input required=\"\" type=\"text\" class=\"form-control p_input\" name=\"username\" id=\"username\" />\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"form-group\">\n");
      out.write("                                                        <label>Password</label>\n");
      out.write("                                                        <input required=\"\" type=\"pass\" class=\"form-control p_input\" name=\"pass\" id=\"pass\" />\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"form-group\">\n");
      out.write("                                                        <label>confimer</label>\n");
      out.write("                                                        <input required=\"\" type=\"pass\" class=\"form-control p_input\" name=\"cpass\" id=\"cpass\" />\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"form-group d-flex align-items-center justify-content-between\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div class=\"text-center\">\n");
      out.write("\n");
      out.write("                                                        <button id=\"send\" type=\"submit\" value=\"Envoyer\" class=\"btn btn-primary btn-block enter-btn\">Login</button>\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <p class=\"sign-up text-center\">Already have an Account?<a href=\"login.jsp\"> Sign Up</a></p>\n");
      out.write("                                                        <p class=\"terms\">By creating an account you are accepting our<a href=\"#\"> Terms & Conditions</a></p>\n");
      out.write("                                                        </form>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<footer class=\"footer mt-3\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"container-fluid\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"footer-content text-center small\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"text-muted\">&copy; 2019 Graindashboard. All Rights Reserved.</span>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</footer>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </main>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<script src=\"public/graindashboard/js/graindashboard.js\"></script>\n");
      out.write("    <script src=\"public/graindashboard/js/graindashboard.vendor.js\"></script>\n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>");
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
