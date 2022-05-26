<%@ page import="helloMVC.servlet.domain.member.Member" %>
<%@ page import="helloMVC.servlet.domain.member.MemberRepository" %>
<%--
  Created by IntelliJ IDEA.
  User: anrh0
  Date: 2022-05-26
  Time: 오후 5:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // JSP 에서는 request, response 사용 가능
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id=<%=member.getId()%></li>
    <li>이름=<%=member.getUsername()%></li>
    <li>나이=<%=member.getAge()%></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>
