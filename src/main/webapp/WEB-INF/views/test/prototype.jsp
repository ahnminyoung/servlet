<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-10
  Time: 오후 3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*
        상속, prototype
     */

    const car ={
        wheels :4,
        drive(){
            console.log("drive..");
        }
    }

    const bmw = function(color){
        this.color = color;
    };
    // constructor 가 true
    bmw.prototype.wheels =4;
    bmw.prototype.drive = function(){
        console.log("drive..");
    };
    bmw.prototype.navigation = 1;
    bmw.prototype.stop = function() {
        console.log("STOP!!");
    }

    /* 이렇게하면 코드는 깔끔하나 Constructor 가 false 나옴
    bmw.prototype ={
        constructor: bmw,       // <-- 이렇게 생성자를 넣어줄수는있음 개발자 마음
        wheels : 4,
        drive(){
            console.log("drive..");
        },
        navigation : 1,
        stop(){
            console.log("STOP!!!!!");
        }
    }
    */

    const a = new bmw("red");
    const b = new bmw("yellow");

    const Bmw = function(color){
        const a = color;
        this.getColor = function(){
            console.log(a);
        }
    }

    const c = new Bmw("red");


</script>
<body>

</body>
</html>
