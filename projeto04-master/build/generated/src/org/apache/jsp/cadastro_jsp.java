package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.dados.Cliente;
import br.com.fatecpg.dados.BD;

public final class cadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/WEB-INF/jspf/cabeçalho.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/navbar.jspf");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cadastro</title>\n");
      out.write("       <link href=\"css/newcss.css\" rel=\"stylesheet\">\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- FAVICON -->\n");
      out.write("<link rel=\"icon\" href=\"imagens/icone.PNG\">\n");
      out.write("\n");
      out.write("<!-- CSS -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\">\n");
      out.write("<link href=\"css/css.css\" rel=\"stylesheet\" type=\"text/css\"/>");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"cadastro.jsp\">NOME</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"cadastro.jsp\">HOME</a></li>\n");
      out.write("        <li><a href=\"clientes.jsp\">CLIENTE</a></li>\n");
      out.write("        <li><a href=\"#\">FORNECEDOR</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("    <div class=\"container-fluid cor-2 text-center\">    \n");
      out.write("            \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                        <p style=\"font-weight: bold\">Caio Bispo</p>\n");
      out.write("                        <p> Análise e Desenvolvimento de Sistemas na FATEC-PG</p>\n");
      out.write("                        <center><img src=\"fotos/caio.jpg\" class=\"img-responsive img-circle margin imagem\"></center><br>\n");
      out.write("                        <center><a href=\"https://www.linkedin.com/in/caio-bispo-173607162/\" style=\"color:#1abc9c\">LinkedIn</a></center>\n");
      out.write("                    </div> \n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-4\"> \n");
      out.write("                        <p style=\"font-weight: bold\">NOME</p>\n");
      out.write("                        <p>O QUE QUISER</p>\n");
      out.write("                        <center><img src=\"#\" class=\"img-responsive img-circle margin imagem\"></center><br>\n");
      out.write("                        <center><a href=\"#\" style=\"color:#1abc9c\">LinkedIn</a></center>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-4\"> \n");
      out.write("                        <p style=\"font-weight: bold\">NOME</p>\n");
      out.write("                        <p>O QUE QUISER</p>\n");
      out.write("                        <center><img src=\"#\" class=\"img-responsive img-circle margin imagem\"></center><br>\n");
      out.write("                        <center><a href=\"#\" style=\"color:#1abc9c\">LinkedIn</a></center>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
