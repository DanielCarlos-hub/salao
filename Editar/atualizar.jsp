<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%
	if(request.getParameter("atualizar").equals("cliente")){
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String cidade = request.getParameter("cidade");
		
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		
		String sql = "update cliente set nome = ? , email = ? , telefone = ? , cidade = ? where id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.executeQuery("SET NAMES 'UTF8'");		
		stmt.setString(1, nome);
		stmt.setString(2, email);
		stmt.setString(3, telefone);
		stmt.setString(4, cidade);
		stmt.setInt(5, id);

		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		if(count > 0){
			response.sendRedirect("../Listar/cliente.jsp");
		}
	}

	if(request.getParameter("atualizar").equals("prod")){
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String marca = request.getParameter("marca");
		String preco = request.getParameter("preco");
		String fornecedor = request.getParameter("fornecedor");
		String imagem = request.getParameter("imagem");
		
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		
		String sql = "update produtos set nome = ? , marca = ? , preco = ? , fornecedor = ?, imagem = ? where id = ?";

		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.executeQuery("SET NAMES 'UTF8'");		
		stmt.setString(1, nome);
		stmt.setString(2, marca);
		stmt.setString(3, preco);
		stmt.setString(4, fornecedor);
		stmt.setString(5, imagem);
		stmt.setInt(6, id);

		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		if(count > 0){
			response.sendRedirect("../Listar/produtos.jsp");
		}
	}

	if(request.getParameter("atualizar").equals("servico")){
		int id = Integer.parseInt(request.getParameter("id"));
		String descricao = request.getParameter("descricao");
		String tipo = request.getParameter("tipo");
		String preco = request.getParameter("preco");
		String duracao = request.getParameter("duracao");
		String imagem = request.getParameter("imagem");
		
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		
		String sql = "update servicos set descricao = ? , tipo = ? , preco = ? , duracao = ? , imagem = ? where id = ?";
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.executeQuery("SET NAMES 'UTF8'");		
		stmt.setString(1, descricao);
		stmt.setString(2, tipo);
		stmt.setString(3, preco);
		stmt.setString(4, duracao);
		stmt.setString(5, imagem);
		stmt.setInt(6, id);

		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();

		if(count > 0){
			response.sendRedirect("../Listar/servico.jsp");
		}
	}

	if(request.getParameter("atualizar").equals("usuario")){
		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		int status = Integer.parseInt(request.getParameter("status"));
		String nivel = request.getParameter("nivel");

		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		
		String sql = "update usuario set nome = ? , usuario = ? , senha = ? , email = ? , status = ? , nivel = ? where id = ?";
		
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.executeQuery("SET NAMES 'UTF8'");		
		stmt.setString(1, nome);
		stmt.setString(2, usuario);
		stmt.setString(3, senha);
		stmt.setString(4, email);
		stmt.setInt(5, status);
		stmt.setString(6, nivel);
		stmt.setInt(7, id);

		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		
		if(count > 0){
			response.sendRedirect("../Listar/usuario.jsp");
		}
	}
%>