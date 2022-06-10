<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-10
  Time: 오후 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*
        setTimeout, setInterval
     */

    function showName(name){
        console.log(name);
    }

    const tId = setTimeout(showName, 3000, 'ahnminyoung');

    clearTimeout(tId);

    // 5초후에는 clear

    let num = 0;
    function showTime(){
        console.log('안녕하세요. 접속하신지 '+ num++ +'초가 지났습니다.');
        if (num >5){
            clearInterval(id);
        }
    }

    const id = setInterval(showTime, 1000);









    /*
        function fn(){
            console.log(3);
        }

        setTimeout(fn, 3000);

       이렇게 써도됨 ->
        setTimeout(function(){
            console.log(3);
        }, 3000);
     */


</script>
<body>

</body>
</html>
