<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-10
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    /*  Arguments
        - 함수로 넘어 온 모든 인수에 접근 가능
        - 함수내에서 이용 가능한 지역 변수
        - length / index
        - Array 형태의 객체
        - 배열의 내장 메서드 없음 ( forEach, Map)
     */
    // ...numbers forEach
    function add(...numbers){
        let result = 0;
        numbers.forEach(num => {
            result += num;
        });
        console.log(result);
    }

    add(1, 2, 3);
    add(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

    // ...numbers reduce
    function add1(...numbers){
        let result = numbers.reduce((prev, cur) => {
            return prev + cur;
        });
        console.log(result);
    }
    add1(1, 2, 3);
    add1(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

    /*
        나머지 매개변수
        user 객체를 만들어 주는 생성자 함수를 만들겁니다.
     */
    function User(name, age, ...skills){
        this.name = name;
        this.age = age;
        this.skills = skills;
    }

    const user1 = new User('Mike', 30, 'java','css');
    const user2 = new User('tom', 25, 'js', 'React');
    const user3 = new User('Daniel', 40, 'English');

    console.log(user1);
    console.log(user2);
    console.log(user3);

    /*
        전개구문
     */

    let arr1 = [1, 2, 3];
    let arr2 = [4, 5, 6];

    // arr2.forEach(num => {
    //     arr1.unshift(num);
    // });
    arr1 = [...arr2, ...arr1]
    console.log(arr1);

    // -- ---- - -- - -- - - -- -- - - -- - -- -
    let user = {name: "ahnminyoung"};
    let info = {age: 30};
    let fe = ["JS", "React"];
    let lang = ["Korean", "English"];

    // user = Object.assign({},
    //     user,
    //     info,
    //     {
    //         skills : [],
    //     });
    //
    // fe.forEach(item => {
    //     user.skills.push(item);
    // });
    // lang.forEach((item) => {
    //     user.skills.push(item);
    // });

    user = {
        ...user,
        ...info,
        skills: [...fe,
        ...lang],
    }

    console.log(user);



</script>
<body>

</body>
</html>
