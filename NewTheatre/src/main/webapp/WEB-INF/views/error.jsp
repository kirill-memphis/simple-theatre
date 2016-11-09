<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/style01.css"/>"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Авторизация</title>
    </head>
    <body>
        <header>
            <a href="/"><img alt="Логотип" id="top-image" src="<c:url value="/img/logo-spont-theater.png"/>"/></a>
            <div id="user-panel">
                <a href="#"><img alt="Иконка юзера" src="<c:url value="/img/user-icon.png"/>"/></a>
            </div>
        </header>
        <div id="main">

            <section>
                <article style = "margin-left: 0px;">
                    <h1>Ошибка</h1>
                    <div class="text-article">
                        <div id="loginBox">
                        <p class="error">Ошибка входа. Неверный логин или пароль.</p>
                        <p>Вернуться <strong><a href="login">к авторизации</a></strong>.</p>
                        </div>
                    </div>
                </article>
            </section>
        </div>
    <footer>
            <div>
                <span>Тестовое приложение JAVA EE</span>
                <span><a target="_blanc" href="index.jsp">Главная страница</a></span>
            </div>
        </footer>
    </body>
</html>