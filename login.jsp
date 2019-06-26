<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Salão</title>
    <link rel="stylesheet" href="css/login.css" />
  </head>
  <body>
    <div id="container">
      <div class="form">
          <div class="title">
              <img src="img/como-criar-um-logo.jpg" alt="">
          </div>
        <div class="form2">
          <form action="validar-usuario.jsp" method="POST">
            Usuário <br />
            <input type="text" name="usuario" placeholder="Digite o Usuário" /><br>
            Senha <br />
            <input type="password" name="senha" placeholder="Digite a Senha" />
            <div class="btn1">
              <button type="submit" name="acao" value="logar">Entrar</button>
              <a href="">Esqueci a Senha</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
