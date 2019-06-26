<%@page contentType="text/html" import="java.util.*, java.text.*, java.sql.*" pageEncoding="UTF-8"%>

<%

	session.invalidate();
	response.sendRedirect("index.html");

%>