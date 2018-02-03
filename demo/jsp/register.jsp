<!-- <!DOCTYPE html> -->

<%@ include file="/WEB-INF/jspf/directive/page.jspf"%>
<%@ include file="/WEB-INF/jspf/directive/taglib.jspf"%>

<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="language"
	value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="i18n.resources" />


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->

    <title>Railway tickets online</title>
    <meta name="description" content="Сервис по продаже ж/д билетов онлайн &quot;Проезд&quot; 
            - лучший выбор, если нужно купить билет на поезд по Украине или СНГ. Заходи!">
    <meta name="keywords" content="жд, железнодорожные, билеты, стоимость, купить, онлайн, цена, дешевые, Украина, расписание поездов, дешево, наличие мест.">
    <meta name="viewport" content="width=1280, User-scalable=1.0">
    <link rel="icon" type="image/png" href="main_icon.png">
    <link rel="stylesheet" type="text/css" media="screen" href="register.css" />
    <script type="text/javascript" src="validation.js"></script>
</head>

<body>
    <div id="background"></div>
    <nav>
            <ul>
                <li><a href="home_page.html"><fmt:message key="common.label.home" /></a></li>
                <li><a href="#"><fmt:message key="common.label.profile" /></a></li>
                <li>
                    <select id="language" name="language" onchange="submit()">
                        <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                        <option value="ru" ${language == 'ru' ? 'selected' : ''}>Russian</option>
                    </select>
                </li>
            </ul>
        </nav>
  
    <div class="login-box">
        <!-- FMT REGISTRATION-->
        <h1><fmt:message key="register_jsp.h1.registration_form"/></h1>
        <hr>
        <div class="login-fields">

            <!-- <input type="hidden" name="command" value="register"> -->
            

            <form action="/Controller" method="post">

                <input type="hidden" name="command" value="register" />

                <!-- Login -->
                <input type="text" name="login" id="login" placeholder="<fmt:message key="register_jsp.label.username" />" required/>
                <!-- First name -->
                <input type="text" name="first_name" id="first_name" placeholder="<fmt:message key="register_jsp.label.first_name" />" required/>
                <!-- Last Name -->
                <input type="text" name="last_name" id="last_name" placeholder="<fmt:message key="register_jsp.label.last_name" />" required/>
                <!-- Email ? -->

                <!-- <input type="text" name="login" id="login" placeholder="Email" required/> -->
                <!-- Password -->

                <input type="password" name="password" id="password" placeholder="<fmt:message key="register_jsp.label.password" />" required/>

                <!-- <input type="submit" value='<fmt:message key="login_jsp.button.register"/>' name="command" value="register"> -->
                <input for="signin" type="submit" class="button" name="command" value="<fmt:message key="register_jsp.button.register" />">
                <input for="signin" type="submit" value="<fmt:message key="register_jsp.button.login_page" />" onclick="window.location='login.html';" />
            </form>

        </div>
    </div>

</body>

</html>