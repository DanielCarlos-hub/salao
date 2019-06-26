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
          <h1>Usuários</h1>
        </div>

        <div class="form2">
          <form action="cadastrar.jsp" method="POST">
            <label>Nome </label>
                <input type="text" name="nome" placeholder="Digite o Nome" />
            <label>Email</label>
                <input type="text" name="email" placeholder="Digite o E-mail" />
            <br>
            <label>Usuário</label>
                <input type="text" name="usuario" placeholder="Digite o Usuario" />
            <label>Senha</label>
                <input type="password" name="senha" placeholder="Digite a Senha" />
            <br>
            <center>
            <label>Nível de Acesso</label>
                <input type="text" name="nivel" placeholder="Nível de Acesso" />
            </center>
            <div class="btn1">
              <button type="submit" name="cadastrar" value="usu">Enviar</button>
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
