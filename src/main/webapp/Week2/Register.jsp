<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2024/3/13
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>网页表单示例</title>
    <script>
        function validateForm() {
            const username = document.forms["myForm"]["username"].value;
            const password = document.forms["myForm"]["password"].value;
            const email = document.forms["myForm"]["email"].value;
            const date = document.forms["myForm"]["birthdate"].value;

            if (username === "" || password === "" || email === "" || date === "") {
                alert("所有字段都必须填写");
                return false;
            }

            if (password.length < 8) {
                alert("密码长度至少为八个字符");
                return false;
            }

            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                alert("请输入有效的电子邮件地址");
                return false;
            }

            const datePattern = /^\d{4}-\d{2}-\d{2}$/;
            if (!datePattern.test(date)) {
                alert("日期格式必须为yyyy-dd-mm");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
<h2>用户注册</h2>

<form name="myForm" action="/submit_form" method="post" onsubmit="return validateForm()">
    <label for="username">用户名:</label><br>
    <input type="text" id="username" name="username" required><br>
    <label for="password">密码:</label><br>
    <input type="password" id="password" name="password" minlength="8" required><br>
    <label for="email">电子邮件:</label><br>
    <input type="email" id="email" name="email" required><br>
    <label for="birthdate">出生日期:</label><br>
    <input type="text" id="birthdate" name="birthdate" pattern="\d{4}-\d{2}-\d{2}" placeholder="yyyy-dd-mm" required><br>
    <input type="submit" value="Register"/>
</form>

</body>
</html>
