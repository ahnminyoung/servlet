<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-13
  Time: 오후 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*
        async await
     */
    async function getName() {
        // return Promise.resolve("Tom");
        throw new Error("err...");
    }

    getName().catch((err) =>{
        console.log(err);
    })

    function getName1(){
        return new Promise((resolve, reject) => {
            setTimeout(() => {
                resolve(name);
            }, 1000);
        });
    }

    async function showName1(){
        const result = await getName('Mike');
        console.log(result);
    }

    console.log("시작");
    showName1();

</script>
<body>

</body>
</html>
