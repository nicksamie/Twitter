    <%--
      Created by IntelliJ IDEA.
      User: sameer
      Date: 6/16/14
      Time: 6:47 PM
    --%>

    <%@ page contentType="text/html;charset=UTF-8" %>
    <html>
    <head>
        <title>View Profile</title>
        <link href="<g:createLinkTo dir="css" file="templatemo_style.css"/> " rel="stylesheet" type="text/css" />
        <meta name="layout" content="myMain">
    </head>
    <body>

    <h1>view profile</h1>
    Name : ${user.profile.firstname} ${user.profile.lastname}

%{--    <iframe allowtransparency="true" frameborder="0" scrolling="no"
            src="//platform.twitter.com/widgets/follow_button.html?screen_name=twitterapi"
            style="width:300px; height:20px;">
    </iframe>--}%
    <g:link  controller="profile" action="followUser" id="${user.id}">Follow</g:link>

    <div class="profile-picture">
        <g:if test="${user.profile.picture}">
            <img src="<g:createLink controller="profile" action="display_picture" params="[id:user.id]"/>"  />
        </g:if>
    </div>


<g:profile/>
    </body>
    </html>