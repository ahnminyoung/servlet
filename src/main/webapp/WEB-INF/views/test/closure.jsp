<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-10
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*
        closure
     */
    function makeCounter(){
        let num = 0;

        return function() {
            return num++;
        };
    }

    let counter = makeCounter();

    console.log(counter());
    console.log(counter());
    console.log(counter());


</script>
<body>

</body>
</html>
