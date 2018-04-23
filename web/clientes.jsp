<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.dados.Cliente"%>
<%@page import="br.com.fatecpg.dados.BD"%>
<!DOCTYPE html>
<%
    if (request.getParameter("add") != null){
        Cliente x = new Cliente();
        x.setNome(request.getParameter("nome"));
        x.setCpf(request.getParameter("cpf"));
        x.setRg(request.getParameter("rg"));
        x.setEmail(request.getParameter("email"));
        x.setTel(request.getParameter("tel"));
        x.setEnd(request.getParameter("end"));
        
        
        BD.getClientes().add(x);
        response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("del") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        BD.getClientes().remove(i);
        response.sendRedirect(request.getRequestURI());
       
    }   

    if (request.getParameter("salvar") != null){
        Cliente x = new Cliente();
        x.setNome(request.getParameter("nome"));
        x.setCpf(request.getParameter("cpf"));
        x.setRg(request.getParameter("rg"));
        x.setEmail(request.getParameter("email"));
        x.setTel(request.getParameter("tel"));
        x.setEnd(request.getParameter("end"));
        
        int i = Integer.parseInt(request.getParameter("i"));
        BD.getClientes().remove(i);
        BD.getClientes().add(i, x);
        response.sendRedirect(request.getRequestURI());
    }

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de clientes</title>
    </head>
    <body>
        <h1>Cadastro de clientes</h1>
        
        <% if (request.getParameter("edit") != null){ 
        int i = Integer.parseInt(request.getParameter("i"));%>
          
        <fieldset>
            <form>
                Nome:<br><input type="text" name="nome" value="<%= BD.getClientes().get(i).getNome() %>" ><br>
                CPF:<br><input type="text" name="cpf" value="<%= BD.getClientes().get(i).getCpf() %>"><br>
                RG:<br><input type="text" name="rg" value="<%= BD.getClientes().get(i).getRg() %>"><br>
                Email:<br><input type="text" name="email" value="<%= BD.getClientes().get(i).getEmail() %>"><br>
                Telefone:<br><input type="text" name="tel" value="<%= BD.getClientes().get(i).getTel() %>"><br>
                Endereço<br><input type="text" name="end" value="<%= BD.getClientes().get(i).getEnd() %>"><br>
                <br><form><input type="submit" name="salvar" value="Salvar"><input type="hidden" name="i" value="<%= i%>"></form>
            </form>
        </fieldset>
        
        <% } else { %>
        
            <fieldset>
            <form>
                Nome:<br><input type="text" name="nome"><br>
                CPF:<br><input type="text" name="cpf"><br>
                RG:<br><input type="text" name="rg"><br>
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
                <th>CPF</th>
                <th>RG</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Alteração</th>
                <th>Exclusão</th>
            </tr>
                
            <% for (int i=0; i <BD.getClientes().size(); i++) { %>
            <tr>
                <td><%= i %></td>
                <td><%= BD.getClientes().get(i).getNome() %></td>
                <td><%= BD.getClientes().get(i).getCpf() %></td>
                <td><%= BD.getClientes().get(i).getRg() %></td>
                <td><%= BD.getClientes().get(i).getEmail() %></td>
                <td><%= BD.getClientes().get(i).getTel() %></td>
                <td><%= BD.getClientes().get(i).getEnd() %></td>
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
