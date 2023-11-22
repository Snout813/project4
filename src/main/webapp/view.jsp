<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.example.JSPCRUD_Final.BoardDAO" %>
<%@ page import="com.example.JSPCRUD_Final.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Form</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>View Form</h1>
<p>
    Title: <%= u.getTitle()%><br>
    Writer: <%= u.getWriter()%><br>
    Content: <%= u.getContent()%><br>
    Category: <%= u.getCategory()%><br>
</p>
</body>
</html>