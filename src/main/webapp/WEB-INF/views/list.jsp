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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<body>
<c:forEach items="${boardList}" var="list">
<table class="table">
    <thead>
    <tr>
        <th scope="col"><input name="RowCheck" type="checkbox" value="${list.no}"></th>
        <th scope="col">no</th>
        <th scope="col">제목</th>
        <th scope="col">내용</th>
        <th scope="col">작성일</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">${boardList.no}</th>
        <td>${boardList.title}</td>
        <td>${boardList.content}</td>
        <td>${boardList.writeDate}</td>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th scope="row">2</th>--%>
<%--        <td>Jacob</td>--%>
<%--        <td>Thornton</td>--%>
<%--        <td>@fat</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th scope="row">3</th>--%>
<%--        <td colspan="2">Larry the Bird</td>--%>
<%--        <td>@twitter</td>--%>
<%--    </tr>--%>
    </tbody>
</table>
</c:forEach>
<hr/>
<%--데이터입력받기--%>

<c:forEach items="${articleList}" var="article">
    <div style="border:1px solid #d96b6b;margin-bottom:2px">
        <input name="RowCheck" type="checkbox" value="${list.no}"

        ID : ${article.id} <br/>
        제목 : ${article.title} <br/>
        내용 : ${article.content}<br/>
        작성일 : ${article.writeDate }<br/>
    </div>
    <a href="${path}/borad/detail?no=${list.id}>${list.title}"></a>
</c:forEach>
<input type="button" value="선택삭제" clas="btn btn-outline-info" onclick="deleteValue();">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%--ajax로 입력받기--%>
<script>
    $(document).ready(function (){
        read();
    });
<%--데이터 뿌리기--%>
    function read() {
        console.log(1111111111111);
        $.ajax({
            type: "POST",
            url: "read",
            traditional: true,
            dataType: 'text',
            success: function (data) {
                console.log(data);
                if (data != 0) {
                    for (i = 0; i < list.length; i++) {
                        var tag = "<tr>" +
                            "<td>" + i + 1 + "</td>" +
                            "<td>" + list[i].title + "</td>" +
                            "<td>" + list[i].content + "</td>" +
                            "<td>" + list[i].writeDate + "</td>" +
                            "</td>"
                        $("#login_log_tb").append(tag);
                    }
                }

            }
        });
    }
<%--공부--%>
    function a() {
        var a = document.getElementById('title').value;
        console.log(a)
        $.ajax({
            type: "POST",
            url: "ajax1",
            dataType: 'text',
            data: {title: a},
            success: function (data) {
                console.log(data);
                alert('성공');
            }
        });
    }
</script>

<%--선택삭제--%>
<script type="text/javascript">
    // $(function() {
    //     var chkObj = document.getElementById("RowCheck");
    //     var rowCnt = chkObj.length;
    //
    //     $("input[name='allCheck']").click(function() {
    //         var chk_listArr = $("input[name='RowCheck']");
    //         for (var i = 0; i < chk_listArr.length; i++) {
    //             chk_listArr[i].checked = this.checked;
    //         }
    //     });
    //     $("input[name='RowCheck]").click(function () {
    //         if ($("input[name='RowCheck']:checked").length == rowCnt) {
    //             $("input[name='allCheck']")[0].checked = true;
    //         } else {
    //             $("input[name='allCheck']")[0].checked = false;
    //         }
    //     });
    // });
    //
    // function deleteValue() {
    //     var url = "delete";
    //     var valueArr = new Array();
    //     var list = $("input[name='RowCheck']");
    //     for (var i = 0; i < list.length; i++) {
    //         if (list[i].checked) {
    //             valueArr.push(list[i].value);
    //         }
    //     }
    //     if (valueArr.length == 0) {
    //         alert("선택된 글이 없습니다.");
    //     } else {
    //         var chk = confirm("정말 삭제하시겠습니까?");
    //         $.ajax({
    //             url: url,
    //             type: 'POST',
    //             traditional: true,
    //             data: {
    //                 valueArr: valueArr
    //             },
    //             success: function (jdata) {
    //                 if (jdata == 1) {
    //                     alert("삭제 성공");
    //                     location.replace("list")
    //                 } else {
    //                     alert("삭제 실패");
    //                 }
    //             }
    //         });
    //     }
    //
    // }
</script>
</body>

</html>
