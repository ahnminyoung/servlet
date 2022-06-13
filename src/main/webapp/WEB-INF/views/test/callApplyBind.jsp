<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-10
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*
        call, apply, bind   함수 호출 방식과 관계없이 this를 지정할 수 있음
     */

    // call
    const mike = {
        name: "Mike",
        age: 30
    };
    const tom = {
        name: "Tom"
    }
    function showThisName(){
        console.log(this.name);
    }



    showThisName();
    showThisName.call(mike); // mike가 함수의 this가 됨   // 함수를 호출하면서 call을 사용하고 this로 사용할 객체로 넘기면 해당함수가 주어진 객체의 메소드인거처럼 사용할 수 있습니다.
    showThisName.call(tom);

    function update(age, birthYear, occupation) {
        this.age = age;
        this.birthYear = birthYear;
        this.occupation = occupation;
    }
    console.log("mike1 = ",mike);
    update.call(mike, 1999, 'singer');
    console.log("mike2 = ",mike);

    // apply
    update.apply(tom, [30, 2003, 'programmer']);
    console.log(tom);

    // bind
    const user = {
        name: "Ahnminyoung",
        showName: function(){
            console.log('hello', this.name);
        },
    };

    user.showName();

    let fn = user.showName;
    fn.call(user);
    fn.apply(user);

    let boundFn = fn.bind(user);

    boundFn();


</script>
<body>

</body>
</html>
