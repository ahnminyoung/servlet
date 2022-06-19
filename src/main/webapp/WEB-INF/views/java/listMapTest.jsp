<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-19
  Time: 오후 9:01
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <title>Title</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function(){
            console.log("human", $("#human").children().val());
            console.log("human", $("#peaple2").val());

            $("#peaple1").text();

        });
    </script>
</head>
<body>
<select id="human">
    <option value="">사람종류</option>
    <option value="">${map.peaple1}</option>
    <option value="">${map.peaple2}</option>
    <option value="">${map.peaple3}</option>
    <option value="">${map.peaple4}</option>
    <option value="">${map.peaple5}</option>

</select>

</body>
</html>
