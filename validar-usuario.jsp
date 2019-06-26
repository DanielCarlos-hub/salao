<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>

<%
	if(request.getParameter("acao").equals("logar")){
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		String url = "jdbc:mysql://localhost/salao";
		String user_bd = "root";
		String senha_bd = "";
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
		
		String sql = "SELECT * FROM usuario WHERE usuario = ? AND senha = ? AND status = 1 LIMIT 1";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setString(1, usuario);
		stmt.setString(2, senha);
		ResultSet verifica = stmt.executeQuery();


		if(verifica.next()){
			session.setAttribute("loginUsuario", verifica.getString("nome"));
			response.sendRedirect("principal.jsp");
		}
		else{
			out.println("Dados não conferem. Tente novamente");
			response.sendRedirect("login.jsp");
		}

		stmt.close();
		conn.close();
	}

%>