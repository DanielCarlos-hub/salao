<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>

<%
	if(request.getParameter("cadastrar").equals("cliente")){
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String cidade = request.getParameter("cidade");
		
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);

		Statement stmt1 = conn.createStatement();
		//recebe o resultado
		ResultSet rs = stmt1.executeQuery("SET NAMES 'UTF8'");
		
		//sql - instrução SQL enviada ao banco
		String sql = "INSERT INTO cliente(nome, email, telefone, cidade) VALUES (?, ?, ?, ?)";
		//PreparedStatement - responsável pela execução da instrução SQL
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, nome);
		stmt.setString(2, email);
		stmt.setString(3, telefone);
		stmt.setString(4, cidade);
		stmt.executeUpdate();

		response.sendRedirect("../principal.jsp");

		stmt.close();
		conn.close();
	}

	if(request.getParameter("cadastrar").equals("prod")){
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
		
		String sql = "INSERT INTO produtos (nome, marca, preco, fornecedor, imagem) VALUES (?, ?, ?, ?, ?)" ;
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, nome);
		stmt.setString(2, marca);
		stmt.setString(3, preco);
		stmt.setString(4, fornecedor);
		stmt.setString(5, imagem);
		stmt.executeUpdate();
		stmt.close();
		conn.close();

		response.sendRedirect("../principal.jsp");
	}

	if(request.getParameter("cadastrar").equals("serv")){
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

		Statement stmt1 = conn.createStatement();
		//recebe o resultado
		ResultSet rs = stmt1.executeQuery("SET NAMES 'UTF8'");
		
		//sql - instrução SQL enviada ao banco
		String sql = "INSERT INTO servicos(descricao, tipo, preco, duracao, imagem) VALUES (?, ?, ?, ?, ?)";
		//PreparedStatement - responsável pela execução da instrução SQL
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, descricao);
		stmt.setString(2, tipo);
		stmt.setString(3, preco);
		stmt.setString(4, duracao);
		stmt.setString(5, imagem);
		stmt.executeUpdate();

		response.sendRedirect("../principal.jsp");

		stmt.close();
		conn.close();
	}
	if(request.getParameter("cadastrar").equals("usu")){
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		String nivel = request.getParameter("nivel");
		
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);

		Statement stmt1 = conn.createStatement();
		//recebe o resultado
		ResultSet rs = stmt1.executeQuery("SET NAMES 'UTF8'");
		
		//sql - instrução SQL enviada ao banco
		String sql = "INSERT INTO usuario(nome, usuario, senha, email, nivel) VALUES (?, ?, ?, ?, ?)";
		//PreparedStatement - responsável pela execução da instrução SQL
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, nome);
		stmt.setString(2, usuario);
		stmt.setString(3, senha);
		stmt.setString(4, email);
		stmt.setString(5, nivel);
		stmt.executeUpdate();

		response.sendRedirect("../principal.jsp");

		stmt.close();
		conn.close();
	}
%>