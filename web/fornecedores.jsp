<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.dados.Fornecedor"%>
<%@page import="br.com.fatecpg.dados.BD"%>
<!DOCTYPE html>
<%
    if (request.getParameter("add") != null){
        Fornecedor x = new Fornecedor();
        x.setNome(request.getParameter("nome"));
        x.setRazao(request.getParameter("razao"));
        x.setCnpj(request.getParameter("cnpj"));
        x.setEmail(request.getParameter("email"));
        x.setTel(request.getParameter("tel"));
        x.setEnd(request.getParameter("end"));
        
        
        BD.getFornecedores().add(x);
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("del") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        BD.getFornecedores().remove(i);
        response.sendRedirect(request.getRequestURI());
    }
    
if (request.getParameter("salvar") != null){
        Fornecedor x = new Fornecedor();
        x.setNome(request.getParameter("nome"));
        x.setRazao(request.getParameter("razao"));
        x.setCnpj(request.getParameter("cnpj"));
        x.setEmail(request.getParameter("email"));
        x.setTel(request.getParameter("tel"));
        x.setEnd(request.getParameter("end"));
        
        int i = Integer.parseInt(request.getParameter("i"));
        BD.getFornecedores().remove(i);
        BD.getFornecedores().add(i, x);
        response.sendRedirect(request.getRequestURI());
    }

%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de fornecedores</title>
    </head>
    <body>
        <h1>Cadastro de fornecedores</h1>
        
        <% if (request.getParameter("edit") != null){ 
        int i = Integer.parseInt(request.getParameter("i"));%>
        
          <fieldset>  
            <form>
                Nome:<br><input type="text" name="nome" value="<%= BD.getFornecedores().get(i).getNome() %>"><br>
                Razao social:<br><input type="text" name="razao" value="<%= BD.getFornecedores().get(i).getRazao() %>"><br>
                CNPJ:<br><input type="text" name="cnpj" value="<%= BD.getFornecedores().get(i).getCnpj() %>"><br>
                Email:<br><input type="text" name="email" value="<%= BD.getFornecedores().get(i).getEmail() %>"><br>
                Telefone:<br><input type="text" name="tel" value="<%= BD.getFornecedores().get(i).getTel() %>"><br>
                Endereço<br><input type="text" name="end" value="<%= BD.getFornecedores().get(i).getEnd() %>"><br>
                <br><form><input type="submit" name="salvar" value="Salvar"><input type="hidden" name="i" value="<%= i%>"></form>
            </form>
          </fieldset>
        
        <% } else { %>  
        
          <fieldset>  
            <form>
                Nome:<br><input type="text" name="nome"><br>
                Razao social:<br><input type="text" name="razao"><br>
                CNPJ:<br><input type="text" name="cnpj"><br>
                Email:<br><input type="text" name="email"><br>
                Telefone:<br><input type="text" name="tel"><br>
                Endereço<br><input type="text" name="end"><br>
                <br><input type="submit" name="add" value="Adicionar">
            </form>
          </fieldset>
        <% } %>
        
        
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Razao social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Alteração</th>
                <th>Exclusão</th>
            </tr>
            <% for (int i=0; i <BD.getFornecedores().size(); i++) { %>
            <tr>
                <td><%= i %></td>
                <td><%= BD.getFornecedores().get(i).getNome() %></td>
                <td><%= BD.getFornecedores().get(i).getRazao() %></td>
                <td><%= BD.getFornecedores().get(i).getCnpj() %></td>
                <td><%= BD.getFornecedores().get(i).getEmail() %></td>
                <td><%= BD.getFornecedores().get(i).getTel() %></td>
                <td><%= BD.getFornecedores().get(i).getEnd() %></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i%>">
                        <input type="submit" name="edit" value="Editar">
                    </form>
                </td>
                
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i%>">
                        <input type="submit" name="del" value="Excluir">
                    </form>
                </td>
            </tr>
         <% } %>   
        </table>
    </body>
</html>
