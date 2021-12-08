<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Task Manager - Start page</title>
    <style>
        #modal {
            padding: 50px;
            position: fixed;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        input, button {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
        }
        /*button {*/
        /*    text-decoration: none;*/
        /*    display: none;*/
        /*    color: white;*/
        /*    padding: 20px 30px;*/
        /*    margin: 10px 20px;*/
        /*    font-family: 'Montserrat', sans-serif;*/
        /*    letter-spacing: 2px;*/
        /*    background-image: linear-gradient(to right, #9EEFE1 0%, #4830F0 51%, #9EEFE1 100%);*/
        /*    background-size: 200% auto;*/
        /*    box-shadow: 0 0 20px rgba(0, 0, 0, .1);*/
        /*    transition: .5s;*/
        /*}*/
        /*button:hover {*/
        /*    background-position: right center;*/
        /*}*/
    </style>
    <script>
        function direct() {
            window.location.href = "sign_up";
        }

        function showError() {
            <%String error = (String) request.getAttribute("error");
            if (error != null) {%>
            let msgError = "<%=error%>";
            alert(msgError);
            <%}%>
        }
    </script>
</head>
<body onload="showError()">
<div id="modal">
    <form id="login" action="${pageContext.request.contextPath}/journals" method="POST">
        <h1 style="alignment: center; font-family: 'Odibee Sans', cursive">Task Manager</h1>
        <input name="login" type="text" placeholder="Login" required>
        <label for="password"></label>
        <input name="password" id="password" type="password" placeholder="Password" required>
        <input type="submit" id="submit" value="Sign in">
    </form>
    <button onclick="direct()">Sign up</button>
</div>
</body>
</html>