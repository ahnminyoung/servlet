<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-15
  Time: 오전 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2> 파일업로드 </h2>
    <form action = "/file/fileUpload" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
    <input type="file" name="file">
        <input type="submit" value="submit"/>
    </form>
</body>
</html>
