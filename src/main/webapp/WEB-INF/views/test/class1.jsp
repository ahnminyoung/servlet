<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-13
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*
        Class
     */
    const User = function(name,age){
        this.name = name;
        this.age = age;
        // this.showName = function(){
        //     console.log(this.name);
        // }
    }
    // 프로토타입에 넣기
    User.prototype.showName = function(){
        console.log(this.name);
    }

    const mike = new User("Mike", 30);

    class User1 {
        constructor(name, age) {
            this.name = name;
            this.age = age;
        }
        showName(){
            console.log(this.name);
        }
    }

    const tom = new User1("Tom", 20);

    // 클래스의 상속 extends
    class car {
        constructor(color) {    //{} this로 빈객체를 가르킴
            this.color = color;
            this.wheels = 4;
        }
        drive(){
            console.log("drive..");
        }
        stop(){
            console.log("STOP!!");
        }
    }

    class bmw extends car {
        constructor(color) {
            super(color);    //부모클래스의 constructor를 실행해줘야함
            this.navigation = 1;
        }
        park(){
            console.log("PARK");
        }
        stop(){
            super.stop();   //부모의 메서드를 사용하고 확장하고 싶으면 super를 사용하면됨
            console.log("OFF");
        }
    }

    const z = new bmw("blue");


</script>
<body>

</body>
</html>
