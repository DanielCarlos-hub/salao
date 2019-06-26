<%
	String id;
	String nome;
	String marca;
	String preco;
	String fornecedor;
	String imagem;
	String link;
					
	String url = "jdbc:mysql://localhost/salao";
	String user_bd = "root";
	String senha_bd = "";
					
	Class.forName("com.mysql.jdbc.Driver").newInstance();
					
	Connection conn = DriverManager.getConnection(url, user_bd, senha_bd);
	//Manipula consulta sql
	Statement stmt = conn.createStatement();
	//recebe o resultado
	ResultSet rs = stmt.executeQuery("select * from produtos");
	while(rs.next()){
		id = rs.getString("id");
		nome = rs.getString("nome");
		marca = rs.getString("marca");
		preco = rs.getString("preco");
		fornecedor = rs.getString("fornecedor");
		imagem = rs.getString("imagem");
		link = rs.getString("url");
%>