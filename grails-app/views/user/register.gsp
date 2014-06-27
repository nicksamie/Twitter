<%--
  Created by IntelliJ IDEA.
  User: sameer
  Date: 6/11/14
  Time: 9:15 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:link controller="user" action="login">Login</g:link>
${flash.message}
<g:form method="post" controller="user" action="saveUser">
    <legend>Username or Email</legend>
    <input type="text" name="username">
    <legend>Password</legend>
    <input type="text" name="password">
    <legend>Re-enter Password</legend>
    <input type="text" name="password2">
    <br>

    <label for="captcha">Type the letters above in the box below:</label><br>
    <img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}"/><br>
    <g:textField name="captcha"/>
    ${flash.message1}
    <br>
    <input type="submit" name="register" value="Register">
    <input type="reset" name="reset" value="Reset"><br>
</g:form>

</body>
</html>
<!--damatya@deerwalk.com-->