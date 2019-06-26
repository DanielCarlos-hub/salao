<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Salão</title>
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/all.min.css" />
  </head>
  <body>
    <div>
      <header>
        <div>
          <img id="logo" src="img/como-criar-um-logo.jpg" alt="" />
        </div>
        <menu>
          <li><a href="index.html">Home</a></li>
          <li><a href="produtos.jsp">Produtos</a></li>
          <li><a href="servicos.jsp">Serviços</a></li>
          <li><a href="login.jsp">Login</a></li>
        </menu>
      </header>
      <section>
        
        <div class="flex-container">
          <%@include file="Listar/listar-servico.jsp"%>
          <div class="itens">
            <!-- <a href="#"> -->
              <h3><%=descricao %></h3>
              <br>
              <div><%=tipo %></div>
              <img src="img/servicos/<%=imagem %>">
              <br><br>
              <div class="conteudo-item">
                <div><%=duracao %></div>
                <br>   
                <div>R$ <%=preco %></div>
           <!--  </a> -->
          </div>
        </div>
          <% }
            rs.close();
            stmt.close();
            conn.close();
          %>
      </section>
    </div>
  </body>
</html>
