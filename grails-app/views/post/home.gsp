<%--
  Created by IntelliJ IDEA.
  User: sameer
  Date: 6/13/14
  Time: 6:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="myMain">
</head>

<body>
<div>
    Name : ${userObject.username}
    followers ${countUser}
</div>

<h1>This is a post page</h1>
Welcome ${userObject.username}

<div id="message">hello here</div>
<div id="error"></div>

<div id="allPosts">???????</div>

<g:form>

    <g:submitToRemote url="[controller:'user',action:'testDelete']" update="message" value="TestAjax" />
</g:form>

<g:link controller="profile" action="editProfile">Edit Profile</g:link>
<g:link controller="profile" action="viewProfile">View Profile</g:link>
<div >


    <g:form controller="post" action="ajaxAdd">
        <fieldset>
        <g:textArea name="content" id="postContent" rows="3" cols="50"/><br/>
        <g:submitToRemote url="[controller:'post', action:'addPostAjax']" update="[success:'allPosts',failure:'error']" value="post"/>
            %{--onSuccess="clearPost(e)" onLoading="showSpinner(true)" onComplete="showSpinner(false)"/>--}%
        </fieldset>
    </g:form>
</div>

<br>
<div id="allPosts">

</div>


</body>
</html>

%{--<g:remoteLink controller="user" action="testDelete" id="1" update="[success:'message',failure:'error']">Delete</g:remoteLink>

<g:remoteLink controller="user" action="testDelete" update="[success: 'message']" >DELETE</g:remoteLink>--}%
%{--    <g:form method="post" controller="post" action="savePost">
        <fieldset>
            <legend>Post</legend>
            <g:textArea name="home"></g:textArea><br>
            <g:submitButton name="Post" type="submit"></g:submitButton>
        </fieldset>
     </g:form>--}%