<%@ page import="java.util.*,
         br.com.caelum.agenda.dao.*,
         br.com.caelum.agenda.modelo.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--comentário em JSP --%>
<%String mensagem = "Bem Vindo ao SIstema FJ-21"; %>
<% out.println(mensagem); %>
<%String desenvolvido = "Desenvolvido por Lucas"; %>
<%= desenvolvido %>
<br />

<%System.out.println("tudo executado"); %>

<table>
<%
ContatoDao dao = new ContatoDao();
List<Contato> contatos = dao.getLista();

for(Contato contato : contatos){
%>

<tr>
   <td><%=contato.getNome() %></td>
   <td><%=contato.getEmail() %></td>
   <td><%=contato.getEndereco() %></td>
   <td><%=contato.getDataNascimento().getTime() %></td>
</tr>

<%
}
%>
</table>
</body>
</html>