<html>
<head>
</head>
<body>

<div class="dashboardProfileCard">
    <div class="dashboardProfileCardHeader">Profile</div>
    <img class="profileAvatar-image" src="<g:createLink controller="profile" action="display_picture" params="[id:user?.id]"/>">

    <br>

    %{-- <div class="profile-picture">
         <g:if test="${user.profile.picture}">
             <img src="<g:createLink controller="profile" action="display_picture" params="[id:user.id]"/>"  />
         </g:if>
     </div>--}%

    <div class="DashboardProfileCard-name">
        ${user?.profile?.firstname} ${user?.profile?.lastname}
        <br/>

        @${user?.username}
        <br/>
        %{--<g:link  controller="profile" action="followUser" id="${user.id}">Follow</g:link>--}%
    </div>

</div>

</body>
</html>
