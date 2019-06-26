<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%
	if(request.getParameter("deletar").equals("cliente")){
		int id = Integer.parseInt(request.getParameter("id"));
	
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		 
		String sql = "DELETE FROM cliente WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
			
		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		if(count > 0){
			response.sendRedirect("../Listar/cliente.jsp");
		}
	}

	if(request.getParameter("deletar").equals("produto")){
		int id = Integer.parseInt(request.getParameter("id"));
	
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		 
		String sql = "DELETE FROM produtos WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
			
		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		if(count > 0){
			response.sendRedirect("../Listar/produtos.jsp");
		}
	}

	if(request.getParameter("deletar").equals("servico")){
		int id = Integer.parseInt(request.getParameter("id"));
	
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		 
		String sql = "DELETE FROM servicos WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
			
		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		if(count > 0){
			response.sendRedirect("../Listar/servico.jsp");
		}
	}

	if(request.getParameter("deletar").equals("usuario")){
		int id = Integer.parseInt(request.getParameter("id"));
	
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		 
		String sql = "DELETE FROM usuario WHERE id = ?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
			
		int count = stmt.executeUpdate();

		stmt.close();
		conn.close();
		if(count > 0){
			response.sendRedirect("../Listar/usuario.jsp");
		}
	}
%>