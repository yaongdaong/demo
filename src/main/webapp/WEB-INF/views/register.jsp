<%--
  Created by IntelliJ IDEA.
  User: hrkim
  Date: 2022-09-20
  Time: 오후 4:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }

        .form-signin .checkbox {
            font-weight: 400;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
</head>
<body>
<div class="container">
    <main class="form-signin">
        <form class="form-control" action="login" method="post">

            <label for="userId" class="form-label">이메일</label>
            <div class="row">
                <div class="col-8">
                    <input type="text" name="user_id" id="userId" class="form-control">
                </div>
                <div class="col-4">
                    <button class="btn btn-primary btn-block my-3">인증</button>
                </div>
            </div>

            <label for="password" class="form-label">비밀번호</label>
            <input type="text" name="user_pw" id="password" class="form-control">
            <label for="password" class="form-label">비밀번호 확인</label>
            <input type="text" name="user_pw" id="password_chk" class="form-control">
            <div class="d-grid">
                <button class="btn btn-primary btn-block my-3">회원가입</button>
            </div>

        </form>

    </main>
</div>
</body>
</html>
