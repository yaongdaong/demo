<%--
  Created by IntelliJ IDEA.
  User: hrkim
  Date: 2022-09-15
  Time: 오후 4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    제목 : <input type="text" name="title"/><br />
    내용 : <textarea name="content"></textarea> <input type="submit" value="작성">
</form>
<hr />
<c:forEach items="${articleList}" var="article">
    <div style="border:1px solid black;margin-bottom:2px">
        ID : ${article.id} <br/>
        제목 : ${article.title} <br />
        내용 : ${article.content}<br />
        작성일 : ${article.writeDate }<br/>
    </div>
</c:forEach>
</body>
</html>
