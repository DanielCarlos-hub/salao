<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Salão</title>
    <link rel="stylesheet" href="../css/style.css" />
  </head>
  <body>
    <div id="container2">
      <div class="form">
        <div class="container">

          <h1>Produtos Cadastrados</h1>

          <table class="blueTable">
            
            <thead>
              <tr>
                <th>ID</th>
                <th>Descrição</th>
                <th>Marca</th>
                <th>Preço</th>
                <th>Fornecedor</th>
                <th>Imagem</th>
                <th>Editar</th>
                <th>Deletar</th>
              </tr>
            </thead>
            <%@include file="listar-produtos.jsp"%>
            <tbody>
              <tr>
                <td><%=id %></td>
                <td><%=nome %></td>
                <td><%=marca %></td>
                <td><%=preco %></td>
                <td><a href="<%=link %>" target="_blank"><%=fornecedor %></a></td>
                <td><%=imagem %></td>
                <td>
                  <form action='../Editar/editar.jsp' method='post'>
                    <input type='hidden' name='editar' value='produto'/>
                    <input type='hidden' name='id' value=<%=id %> />
                    <input type='submit' id='botao' class='enviar' value='Editar'/>
                  </form>
                </td>
                <td>
                  <form action='../Editar/deletar.jsp' method='post'>
                    <input type='hidden' name='deletar' value='produto'/>
                    <input type='hidden' name='id' value=<%=id %> />
                    <input type='submit' id='botao' class='enviar' value='Apagar'/>
                  </form>
                </td>
              </tr>
            </tbody>

            <% }
              rs.close();
              stmt.close();
              conn.close();
            %>
          </table>
          <form action="../principal.jsp" method="POST">
            <div class="btn1">
              <button type="submit">Voltar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
