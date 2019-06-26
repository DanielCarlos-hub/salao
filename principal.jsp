<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>

<% if(session.getAttribute("loginUsuario") != null){
%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Menu</title>
    <link rel="stylesheet" href="css/principal.css" />
  </head>
  <body>
    <div id="container">
        <div class="form2">
          <h1>Área Administrativa</h1>
          <div id="usuario"> <h3> Bem-Vindo <%= session.getAttribute("loginUsuario") %> </h3></div>
          <div id="sair"><a href="logout.jsp">Sair</a></div>

          <div id="nav">
            <ul>
              <li><a href="#">Cadastrar</a>
                <ul>
                  <li><a href="Cadastro/cliente.jsp">Clientes</a></li>
                  <li><a href="Cadastro/produto.jsp">Produtos</a></li>
                  <li><a href="Cadastro/servico.jsp">Serviços</a></li>
                  <li><a href="Cadastro/usuario.jsp">Usuários</a></li>
                </ul> 
              </li>
              <li><a href="#">Listar</a>
                <ul>
                  <li><a href="Listar/cliente.jsp">Clientes</a></li>
                  <li><a href="Listar/produtos.jsp">Produtos</a></li>
                  <li><a href="Listar/servico.jsp">Serviços</a></li>
                  <li><a href="Listar/usuario.jsp">Usuários</a></li>
                </ul> 
              </li>
            </ul>
          <div>
      </div>
    </div>
  </body>
</html>

<% }else{
    out.println("Você não tem permissão para acessar esse conteúdo");
    response.sendRedirect("login.jsp");
}
%>