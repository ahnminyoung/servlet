<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2 style="text-align: center; margin-top: 100px;">ids : ${ids}</h2>
<c:forEach var="id" items="${ids}">
    <p>${id}</p>
</c:forEach>
</body>
</html>