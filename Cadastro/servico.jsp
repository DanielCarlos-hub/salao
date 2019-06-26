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
          <h1>Serviços</h1>
        </div>

        <div class="form2">
          <form action="cadastrar.jsp" method="POST">
            <label>Descrição
                <input type="text" name="descricao" placeholder="Nome do Serviço" />
            </label>
            <label>Tipo
                <input type="text" name="tipo" placeholder="Tipo do Serviço" />
            </label>
            <br>
            <label>Preço
                <input type="text" name="preco" placeholder="Preço do Serviço" />
            </label>
            <label>Duração
                <input type="text" name="duracao" placeholder="Duração do Serviço" />
            </label>
            <br>
            <center>
            <label>Imagem</label>
                <input type="text" name="imagem" placeholder="Nome da Imagem" />
            </center>
            <div class="btn1">
                <button type="submit" name="cadastrar" value="serv">Enviar</button>
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
