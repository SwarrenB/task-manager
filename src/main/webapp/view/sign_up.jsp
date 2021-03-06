<!DOCTYPE html>
<html>
<head>
    <title>Task Manager - Sign up</title>
    <style>
        input {
            font-family: "Odibee Sans", cursive;
            width: 80%;
            height: 10px;
            padding: 22px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
        }


        input[type=submit], input[type=button] {
            background-color: #1a4c73;
            color: #000000;
        }


        .container {
            background-color: #f1f1f1;
            padding: 20px;
        }


    </style>
    <script>
        function checkPass() {
            if (document.getElementById("password").value !== document.getElementById("passCh").value) {
                alert("Passwords must match");
                return false;
            } else return true;
        }

        function showError() {
            <%String error = (String) request.getAttribute("error");
            if (error != null) {%>
            let msgError = "<%=error%>";
            alert(msgError);
            <%}%>
        }

        function direct() {
            window.location.href = "/start";
        }

    </script>
</head>
<body onload="showError()">
<div class="container">
    <h1 style="font-family: 'Odibee Sans', cursive">Registration</h1>
    <form action="${pageContext.request.contextPath}/well" method="POST" onsubmit="return checkPass()">
        <label for="username">LOGIN</label>
        <input id="username" type="text" name="login" pattern="(?=.*[A-Za-z0-9]).{6,20}"
               title="Must contain from 6 to 20 characters" required>
        <label for="password">PASSWORD</label>
        <input id="password" type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
               required>
        <label for="passCh">CONFIRM PASSWORD</label>
        <input id="passCh" type="password" name="passCh" required>
        <input type="submit" value="Sign up">
        <input type="button" value="Return to sign in page" onclick="direct()">
    </form>
</div>
</body>
</html>
