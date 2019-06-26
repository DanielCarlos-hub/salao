<%
	String id;
	String nome;
	String usuario;
	String senha;
	String email;
	String status;
	String nivel;

					
	String url = "jdbc:mysql://localhost/salao";
	String user_bd = "root";
	String senha_bd = "";
					
	Class.forName("com.mysql.jdbc.Driver").newInstance();
					
	Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
	//Manipula consulta sql
	Statement stmt = conn.createStatement();
	//recebe o resultado
	ResultSet rs = stmt.executeQuery("select * from usuario");
	while(rs.next()){
		id = rs.getString("id");
		nome = rs.getString("nome");
		usuario = rs.getString("usuario");
		senha = rs.getString("senha");
		email = rs.getString("email");
		if(rs.getInt("status") == 1){
			status = "Ativo";
		}
		else{
			status = "Inativo";
		}
		nivel = rs.getString("nivel");
%>