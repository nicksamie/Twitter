<%--
  Created by IntelliJ IDEA.
  User: sameer
  Date: 6/20/14
  Time: 5:21 PM
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <g:javascript library="jquery"/> %{--Adding Ajax--}%

    <title>Twitter </title>
    <meta name="keywords" content="Twitter" />
    <meta name="description" content="Contents for SEO" />
    <link href="<g:createLinkTo dir="css" file="templatemo_style.css"/> " rel="stylesheet" type="text/css" />


    <script language="javascript" type="text/javascript">
        function clearText(field){
            if (field.defaultValue == field.value) field.value = '';
            else if (field.value == '') field.value = field.defaultValue;
        }
    </script>


    <r:layoutResources/>
</head>

<body>
<div id="templatemo_menu">
    <ul>
        <li><g:link controller="user" action="home"><span></span>Home</g:link></li>
        <li><a href="#"><span></span>Notification</a></li>
        <li><a href="#"><span></span>#Discover</a></li>
        <li><g:link controller="profile" action="viewProfile"><span></span>Me</g:link></li>
    </ul>

    <div id="search_section">
        <form action="#" method="get">
            <input type="text" value="Search..." name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
            <input type="submit" name="Search" value="Search" alt="Search" id="searchbutton" title="Search" />
        </form>
    </div>
</div> <!-- end of Top menu -->


<div id="templatemo_container">
    <g:link controller="user" action="login"><span></span>Logout</g:link>

    <div id="templatemo_content_wrapper">
        <div id="left_container">
            <div class="dashboard-left ">

                <div class="dashboardProfileCard">
                    <div class="dashboardProfileCardHeader">Profile</div>
                    <g:profile/>

                    %{--
                    <img class="profileAvatar-image" src="<g:createLink controller="profile" action="display_picture" params="[id:user?.id]"/>">

                    <br>

                    <div class="profile-picture">
                        <g:if test="${user.profile.picture}">
                            <img src="<g:createLink controller="profile" action="display_picture" params="[id:user.id]"/>"  />
                        </g:if>
                    </div>

                    <div class="DashboardProfileCard-name">
                       ${user?.profile?.firstname} ${user?.profile?.lastname}
                        <br/>

                        @${user?.username}
                        <br/>
                        <g:link  controller="profile" action="followUser" id="${user.id}">Follow</g:link>
                    </div>--}%

                </div>
                %{-- <div class="column_w210 fl"> --}%%{--Left Division--}%%{----}%
                <div class="dashboardProfileCard">
                    <div class="header_01">List Of Users</div>

                  <div class="user_list">
                        <g:each in="${userList}" var="user">
                            <g:link controller="profile" action="viewOthersProfile" id="${user.id}">${user?.profile?.firstname} ${user?.profile?.lastname}</g:link>
                            <br/>
                        </g:each>
                    </div>
                </div>
            </div>

        </div>
    </div> <!-- end of a column -->

        <div class="column_w430 fl vl_divider">

            <g:layoutBody/>

            <div class="cleaner"></div>
        </div> <!-- end of a column -->

        <div class="column_w210 fl vl_divider">

            <div class="header_01">
                Categories
            </div>

            <ul class="category_list">
                <li><a href="#">Apple</a></li>
                <li><a href="#">Blackberry</a></li>
                <li><a href="#">Cras eros dolor</a></li>
                <li><a href="#">Vivamus orci velit</a></li>
                <li><a href="#">Proin ultrices eros</a></li>
                <li><a href="#">Aliquam ac nisl eget</a></li>
                <li><a href="#">Praesent vehicula tellus</a></li>
                <li><a href="#">Mauris egestas nunc</a></li>
                <li><a href="#">Ut semper porta magna</a></li>
                <li><a href="#">Donec ante risus</a></li>
                <li><a href="#">Nunc bibendum neque</a></li>
            </ul>


            <div class="cleaner"></div>
        </div> <!-- end of a column -->

        <div class="margin_bottom_20 h_divider"></div>
        <div class="margin_bottom_20"></div>

       %{-- <div class="column_w920">

            <div class="column_w190 fl margin_right_40">
                <a href="#"><img src="images/templatemo_image_02.jpg" alt="image" /></a>
                <p>Nam sit amet justo vel libero tincidunt dignissim. Cras magna velit, pellentesque mattis, faucibus vitae, feugiat vitae. <a href="#">Read more...</a></p>
            </div>

            <div class="column_w190 fl margin_right_40">
                <a href="#"><img src="images/templatemo_image_03.jpg" alt="image" /></a>
                <p>Pellentesque tortor metus, gravida ut aliquet non, iaculis nec nisi. Null am ornare, mauris vitae vehicula veh icula. <a href="#">Read more...</a></p>
            </div>

            <div class="column_w190 fl margin_right_40">
                <a href="#"><img src="images/templatemo_image_04.jpg" alt="image" /></a>
                <p>Proin consequat interdum mauris id auctor. In justo dolor, luctus sed tristique vel, porttitor eu enim. In molestie vehicula pretium  iaculis. <a href="#">Read more...</a></p>
            </div>

            <div class="column_w190 fl">
                <a href="#"><img src="images/templatemo_image_05.jpg" alt="image" /></a>
                <p>Suspendisse odio erat, mattis in hend rerit id, iaculis at metus. Aliquam ligula justo, gravida sed pretium eu. <a href="#">Read more...</a></p>
            </div>

            <div class="margin_bottom_15"></div>
        </div>--}%

        <div class="cleaner"></div>
    </div> <!-- end of wrapper 02 -->
</div> <!-- end of wrapper 01 -->

<div id="templatemo_footer">

    <ul class="footer_list">
        <li><a href="#" class="current">Home</a></li>
        <li><a href="#">Gallery</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Forum</a></li>
        <li><a href="#">About Us</a></li>
        <li class="last"><a href="#">Contact Us</a></li>
    </ul>

    <div class="margin_bottom_10"></div>

    Copyright © 2048 <a href="#">Company Name</a> | <a href="#" target="_parent">Website Templates</a> by <a href="#">Free Templates</a>

    <div class="margin_bottom_10"></div>

    <a href="#"><img style="border:0;width:88px;height:31px" src="#" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
    <a href="#"><img style="border:0;width:88px;height:31px"  src="#" alt="Valid CSS!" vspace="8" border="0" /></a>

</div> <!-- end of footer -->
</div> <!-- end of container -->
<div class="cleaner"></div>
<r:layoutResources/>
</body>

</html>