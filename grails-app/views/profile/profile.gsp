<%--
  Created by IntelliJ IDEA.
  User: sameer
  Date: 6/16/14
  Time: 5:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Profile</title>
    <meta name="layout" content="myMain">
</head>

<body>
<h1>Edit Profile</h1>
<g:uploadForm action="saveProfile" controller="profile">
    <legend>Firstname</legend>
    <input type="text" name="firstname"  value="${userObject?.profile?.firstname}">
    <legend>Lastname</legend>
    <input type="text" name="lastname" value="${userObject?.profile?.lastname}">
    <br>


    <label for="picture">Upload Picture</label>
    <input type="file" name="picture" id="picture"/><br>
    <input type="submit" class="buttons" value="Upload"/>


    <input type="reset" name="reset" value="Reset"><br>
</g:uploadForm>

</body>
</html>