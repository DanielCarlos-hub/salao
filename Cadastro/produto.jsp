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
    <div id="container">
      <div class="form">
        <div class="title">
          <h1>Produtos</h1>
        </div>

        <div class="form2">
          <form action="cadastrar.jsp" method="POST">
            <label>Nome</label>
                <input type="text" name="nome" placeholder="Nome do Produto" />
            </label>
            <label>Marca</label>
                <input type="text" name="marca" placeholder="Marca do Produto" />
            </label>
            <br>
            <label>Preço</label>
                <input type="text" name="preco" placeholder="Preço do Produto" />
            </label>
            <label>Fornecedor</label>
                <input type="text" name="fornecedor" placeholder="Fornecedor" />
            </label>
            <br>
            <center>
            <label>Imagem</label>
                <input type="text" name="imagem" placeholder="Nome da Imagem" />
            </center>
            <div class="btn1">
              <button type="submit" name="cadastrar" value="prod">Enviar</button>
            </div>
          </form>
        </div>
        <form action="../principal.jsp" method="POST">
          <div class="btn1">
            <button type="submit">Voltar</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
