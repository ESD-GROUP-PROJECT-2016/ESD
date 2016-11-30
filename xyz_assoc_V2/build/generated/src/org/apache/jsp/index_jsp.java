package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>XYZ Drivers Association</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        h1{\n");
      out.write("            color:dodgerblue;\n");
      out.write("            text-align:center;\n");
      out.write("            font-family:calibri;\n");
      out.write("            font-size:300%;\n");
      out.write("        }\n");
      out.write("        p1{\n");
      out.write("            color:black;\n");
      out.write("            text-align:center;\n");
      out.write("            font-family:calibri;\n");
      out.write("            font-size:100%   \n");
      out.write("        }           \n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <h1>XYZ Drivers Association</h1>        \n");
      out.write("        <form action=\"MemberLogin.do\" method=\"POST\">  \n");
      out.write("                <TABLE>\n");
      out.write("                    <TR>\n");
      out.write("                        <TD>Username:</TD>\n");
      out.write("                        <TD> <INPUT TYPE=\"Text\" NAME=\"UserName\" SIZE=\"40\"></TD>\n");
      out.write("                    <TR>\n");
      out.write("                        <TD>Password:</TD>\n");
      out.write("                        <TD><INPUT TYPE=\"Password\" NAME=\"Password\" SIZE=\"40\"></TD>\n");
      out.write("                    </TR>\n");
      out.write("                    <TR>\n");
      out.write("                        <TD align=center><INPUT TYPE=\"Submit\" VALUE=\"Login\">\n");
      out.write("                            &        <INPUT TYPE=\"RESET\"></TD>\n");
      out.write("                    </TR>\n");
      out.write("                </TABLE>\n");
      out.write("            \n");
      out.write("        </FORM>\n");
      out.write("        <a href=\"MemRegister.jsp\">If you have not yet got an account please click here!</a>\n");
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
