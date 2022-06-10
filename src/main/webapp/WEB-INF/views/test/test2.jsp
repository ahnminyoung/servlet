<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-06-10
  Time: 오후 1:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    // join 배열을 합쳐서 문자열만드는거
    let arr = ["안녕", "나는", "민영"];

    let result = arr.join("");
    console.log(result);

    // Array.isArray() 배열인지아닌지 확인
    let user = {
        name: "minyoung",
        age: 30,
    };

    let userList = ["minyoung", "jubin", "hong"];

    console.log(typeof user);
    console.log(typeof userList);
    console.log(Array.isArray(user));
    console.log(Array.isArray(userList));

    // arr1.sort 배열 재정령 , 배열자체가 변경되니 주의
    let arr1 = [1, 5, 4, 2, 3];
    arr1.sort();

    console.log(arr1);

    let arr2 = [24, 53, 13, 2, 6];
    arr2.sort((a, b) => {
        console.log(a, b);
        return a - b;
    });

    console.log(arr2);

    // 배열의 모든수 합치기
    let arr3 = [1, 2, 3, 4, 5];

    // for, for of, forEach
    let resultForEach = 0;
    arr3.forEach(num => {
        //result = result +num;
        resultForEach += num;
    })

    // arr.reduce();

    let arrReduce = [1, 2, 3, 4, 5, 6];

    const arrReduceResult = arrReduce.reduce((prev, cur) =>{
        return prev + cur;
    });

    console.log(arrReduceResult);
    // 19살 이상인 이름들만 불러오기
    let memberList = [
        {name:"ahnminyoung", age : 30},
        {name:"leejubin"   , age : 33},
        {name:"hong",        age : 37},
        {name:"wang",        age : 24},
        {name:"ahn",         age : 16},
        {name:"jang",        age : 18},
        {name:"park",        age : 45}
    ]

    let memberListResult = memberList.reduce((prev, cur) => {
        if (cur.age > 19) {
            prev.push(cur.name);
        }
        return prev;
    }, []);

    console.log(memberListResult);

    // 나이들 합 구하기
    let memberList1 = [
        {name:"ahnminyoung", age : 30},
        {name:"leejubin"   , age : 33},
        {name:"hong",        age : 37},
        {name:"wang",        age : 24},
        {name:"ahn",         age : 16},
        {name:"jang",        age : 18},
        {name:"park",        age : 45}
    ]

    let memberListResult1 = memberList1.reduce((prev, cur) => {
        return prev + cur.age;
    });

    console.log(memberListResult1);

</script>
<body>

</body>
</html>
