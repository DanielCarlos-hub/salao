<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>

<% 
	if(request.getParameter("editar").equals("produto")){
	
		int id = Integer.parseInt(request.getParameter("id"));

		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);


		String sql = "SELECT * FROM produtos WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()){

%>
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
			          <h1>Editar Produto <%=rs.getInt("id") %> - <%=rs.getString("nome") %></h1>
			        </div>

			        <div class="form2">
			          <form action="atualizar.jsp" method="POST">
			          	<input type='hidden' name="id" value="<%=rs.getInt("id") %>" />
			            <label>Nome
			                <input type="text" name="nome" value="<%=rs.getString("nome") %>"/>
			            </label>
			            <label>Marca
			                <input type="text" name="marca" value="<%=rs.getString("marca") %>"/>
			            </label>
			            <br>
			            <label>Preço 
			                <input type="text" name="preco" value="<%=rs.getString("preco") %>" />
			            </label>
			            <label>Fornecedor
			                <input type="text" name="fornecedor" value="<%=rs.getString("fornecedor") %>" />
			            </label>
			            <br>
			            <center>
			            <label>Imagem</label>
			                <input type="text" name="imagem" value="<%=rs.getString("imagem") %>" />
			            </center>
			            <div class="btn1">
			              <button type="submit" name="atualizar" value="prod">Enviar</button>
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

<%
		}
		stmt.close();
		conn.close();
	}
%>

<% 
	if(request.getParameter("editar").equals("cliente")){
	
		int id = Integer.parseInt(request.getParameter("id"));

		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);


		String sql = "SELECT * FROM cliente WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()){

%>

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
			          <h1>Editar Cliente <%=rs.getInt("id") %> - <%=rs.getString("nome") %></h1>
			        </div>

			        <div class="form2">
			          <form action="atualizar.jsp" method="POST">
			          	<input type='hidden' name="id" value="<%=rs.getInt("id") %>" />
			            <label>Nome
			                <input type="text" name="nome" value="<%=rs.getString("nome") %>"/>
			            </label>
			            <label>Email
			                <input type="text" name="email" value="<%=rs.getString("email") %>"/>
			            </label>
			            <br>
			            <label>Telefone
			                <input type="text" name="telefone" value="<%=rs.getString("telefone") %>" />
			            </label>
			            <label>Cidade
			                <input type="text" name="cidade" value="<%=rs.getString("cidade") %>" />
			            </label>
			            <div class="btn1">
			              <button type="submit" name="atualizar" value="cliente">Enviar</button>
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

<%
		}
		stmt.close();
		conn.close();
	}
%>


<% 
	if(request.getParameter("editar").equals("servico")){
	
		int id = Integer.parseInt(request.getParameter("id"));

		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);


		String sql = "SELECT * FROM servicos WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()){

%>

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
			          <h1>Editar Produto <%=rs.getInt("id") %> - <%=rs.getString("descricao") %></h1>
			        </div>

			        <div class="form2">
			          <form action="atualizar.jsp" method="POST">
			          	<input type='hidden' name="id" value="<%=rs.getInt("id") %>" />
			            <label>Descrição
			                <input type="text" name="descricao" value="<%=rs.getString("descricao") %>"/>
			            </label>
			            <label>Tipo
			                <input type="text" name="tipo" value="<%=rs.getString("tipo") %>"/>
			            </label>
			            <br>
			            <label>Preço 
			                <input type="text" name="preco" value="<%=rs.getString("preco") %>" />
			            </label>
			            <label>Duração
			                <input type="text" name="duracao" value="<%=rs.getString("duracao") %>" />
			            </label>
			           	<br>
			           	<center>
			           	<label>Imagem</label>
			           	    <input type="text" name="imagem" value="<%=rs.getString("imagem") %>" />
			           	</center>
			            <div class="btn1">
			              <button type="submit" name="atualizar" value="servico">Enviar</button>
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

<%
		}
		stmt.close();
		conn.close();
	}
%>

<% 
	if(request.getParameter("editar").equals("usuario")){
	
		int id = Integer.parseInt(request.getParameter("id"));

		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);


		String sql = "SELECT * FROM usuario WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		ResultSet rs = stmt.executeQuery();
		while(rs.next()){

%>

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
			          <h1>Editar Usuário <%=rs.getInt("id") %> - <%=rs.getString("nome") %></h1>
			        </div>

			        <div class="form2">
			          <form action="atualizar.jsp" method="POST">
			          	<input type='hidden' name="id" value="<%=rs.getInt("id") %>" />
			            <label>Nome
			                <input type="text" name="nome" value="<%=rs.getString("nome") %>"/>
			            </label>
			            <label>Usuário
			                <input type="text" name="usuario" value="<%=rs.getString("usuario") %>"/>
			            </label>
			            <br>
			            <label>Senha
			                <input type="password" name="senha" value="<%=rs.getString("senha") %>" />
			            </label>
			            <label>Email
			                <input type="text" name="email" value="<%=rs.getString("email") %>" />
			            </label>
			            <br>
			            <label>Status
			                <input type="text" name="status" value="<%=rs.getString("status") %>" />
			            </label>
			            <label>Nivel
			                <input type="text" name="nivel" value="<%=rs.getString("nivel") %>" />
			            </label>
			            <div class="btn1">
			              <button type="submit" name="atualizar" value="usuario">Enviar</button>
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

<%
		}
		stmt.close();
		conn.close();
	}
%>