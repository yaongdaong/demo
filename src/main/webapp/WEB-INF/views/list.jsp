<%--
  Created by IntelliJ IDEA.
  User: hrkim
  Date: 2022-09-15
  Time: 오후 4:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<body>
<form method="post">
    제목 : <input id="title" type="text" name="title"/><br />
    내용 : <textarea name="content"></textarea> <input type="submit" value="작성">
    <input type="button" onclick="a()" value="작성1">
</form>
<hr />
<c:forEach items="${articleList}" var="article">
    <div style="border:1px solid #d96b6b;margin-bottom:2px">
        ID : ${article.id} <br/>
        제목 : ${article.title} <br />
        내용 : ${article.content}<br />
        작성일 : ${article.writeDate }<br/>
    </div>
</c:forEach>
<script>
    function a(){
        var a = document.getElementById('title').value;
        console.log(a)
        $.ajax({
            type: "POST",
            url: "ajax1",
            dataType: 'text',
            data: {title:a},
            success: function(data) {
                console.log(data);
                alert('성공');
            }
        });
    }
</script>
</body>

</html>
