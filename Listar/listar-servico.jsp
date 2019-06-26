<%
	String id;
	String descricao;
	String tipo;
	String preco;
	String duracao;
	String imagem;

					
	String url = "jdbc:mysql://localhost/salao";
	String user_bd = "root";
	String senha_bd = "";
					
	Class.forName("com.mysql.jdbc.Driver").newInstance();
					
	Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
	//Manipula consulta sql
	Statement stmt = conn.createStatement();
	//recebe o resultado
	ResultSet rs = stmt.executeQuery("select * from servicos");
	while(rs.next()){
		id = rs.getString("id");
		descricao = rs.getString("descricao");
		tipo = rs.getString("tipo");
		preco = rs.getString("preco");
		duracao = rs.getString("duracao");
		imagem = rs.getString("imagem");

%>