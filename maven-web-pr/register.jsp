<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html 
PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <%@ page pageEncoding="UTF-8"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 
The <c:set var="language"> manages the current language.
If the language was supplied as request parameter (by language dropdown), then it will be set. 
Else if the language was already previously set in the session, then stick to it instead.
Else use the user supplied locale in the request header.
-->

<c:set var="language"
    value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
	scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="i18n.resources" />

<html lang="${language}">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="register.css" />
</head>
<body>

<header>
        <ul>
                <li>
                    <form>
                        <select id="language" name="language" onchange="submit()">
                            <option value="en" ${language == 'en' ? 'selected' : ''}>en</option>
                            <option value="ru" ${language == 'ru' ? 'selected' : ''}>ru</option>
                        </select>
                    </form>
                </li>
        </ul>            
</header>
    

    <form id="login_form" action="Controller" method="post">

<!--=========================================================================== 
Hidden field. In the query it will act as command=login.
The purpose of this to define the command name, which have to be executed 
after you submit current form. 
===========================================================================-->
<!--   <input type="hidden" name="command" value="register" /> -->

        <fieldset>
            <legend>                
                <label for="username"><fmt:message key="registration_jsp.label.username" /></label>
            </legend>
            <input name="username" /><br />
        </fieldset>
        <br />
        <fieldset>
            <legend>                
                <label for="username"><fmt:message key="registration_jsp.label.first_name" /></label>
            </legend>
            <input name="first_name" /><br />
        </fieldset>
        <br />
        <fieldset>
            <legend>                
                <label for="username"><fmt:message key="registration_jsp.label.last_name" />:</label>
            </legend>
            <input name="last_name" /><br />
        </fieldset>
        <br />
        <fieldset>
            <legend>
                <fmt:message key="login_jsp.label.password" />
            </legend>
            <input type="password" name="password" />
        </fieldset>
        <br /> 
        <input type="submit" value='<fmt:message key="login_jsp.button.register"/>' name="command" value="register">
        <a href="login.jsp">Sign In</a>
        <!-- <input type="submit" value='<fmt:message key="login_jsp.button.login_page"/>'> -->
    </form> <%-- CONTENT --%>
</body>
</html>