<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-15
  Time: 오전 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
    <h2>파일 다운로드</h2>
    <form action="/file/fileDownload" method="get" enctype="multipart/form-data">
    <input type="file" name="files" multiple="multiple"/>
    <input type="submit" value="저장">
    </form>
</body>
</html>
