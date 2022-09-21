<%--
  Created by IntelliJ IDEA.
  User: hrkim
  Date: 2022-09-19
  Time: 오후 1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <title>Title</title>
</head>

<body>

<div class="container my-5">
<%--제목--%>
<div class="mb-3">
    <label for="formTitle" class="form-label">제목</label>
    <input type="email" class="form-control" name="title" id="formTitle" placeholder="제목을 입력하세요">
</div>
<%--내용--%>
<div class="mb-3">
    <label for="formContent" class="form-label">내용</label>
    <textarea class="form-control" id="formContent" rows="3"></textarea>
</div>
<%--입력--%>
    <button type="submit" onclick="writeForm()" class="btn btn-primary"><a href="list">글쓰기</a></button>
</div>

<%--<form method="post">--%>
<%--  제목 : <input id="title" type="text" name="title"/><br />--%>
<%--  내용 : <textarea name="content"></textarea> <input type="submit" value="작성">--%>
<%--  <input type="button" onclick="a()" value="작성1">--%>
<%--&lt;%&ndash;  <input id="allCheck" type="checkbox" name="=allCheck"/>&ndash;%&gt;--%>
<%--</form>--%>

<%--ajax로 입력받기--%>
<script>
    function writeForm(){
        console.log()
        var a = document.getElementById('formTitle').value;
        var content = document.getElementById('formContent').value;
        var list = [a, content];
        console.log(list)
        $.ajax({
            type: "POST",
            url: "create",
            traditional: true,
            dataType: 'text',
            data: {list:list},
            success: function(data) {
                console.log(data);
                if(data == "성공")
                alert('성공');
            }
        });
    }
</script>
</body>
</html>
