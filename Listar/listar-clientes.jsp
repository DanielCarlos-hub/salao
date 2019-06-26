<%
	String id;
	String nome;
	String email;
	String telefone;
	String cidade;

					
	String url = "jdbc:mysql://localhost/salao";
	String user_bd = "root";
	String senha_bd = "";
					
	Class.forName("com.mysql.jdbc.Driver").newInstance();
					
	Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
	//Manipula consulta sql
	Statement stmt = conn.createStatement();
	//recebe o resultado
	ResultSet rs = stmt.executeQuery("select * from cliente");
	while(rs.next()){
		id = rs.getString("id");
		nome = rs.getString("nome");
		email = rs.getString("email");
		telefone = rs.getString("telefone");
		cidade = rs.getString("cidade");

%>