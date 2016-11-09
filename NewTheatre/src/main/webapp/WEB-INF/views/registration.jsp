<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/style01.css"/>"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Регистрация</title>
    </head>
    <body>
        <header>
            <a href="/"><img alt="Логотип" id="top-image" src="<c:url value="/img/logo-spont-theater.png"/>"/></a>
            <div id="user-panel">
                <a href="#"><img alt="Иконка юзера" src="<c:url value="/img/user-icon.png"/>"/></a>
            </div>
        </header>
        <div id="main">
            <aside class="leftAside">
                <h2>Регистрация</h2>
                <p>Что бы регистрация прошла успешно, заполните все поля и нажмите на
                кнопку "Зарегистрироваться"
                </p>
            </aside>
            <section>
                <article>
                    <h1>Для покупки билета зарегистрируйтесь</h1>
                    <div class="text-article">
                        <form method="POST" action="registrate">
                        <p>
                            <label for="name">Ваше имя</label>
                            <input type="text" name="name" id="name"/>
                        </p>
                        <p>
                            <label for="login">Логин</label>
                            <input type="text" name="login" id="login"/>
                        </p>
                        <p>
                            <label for="password">Пароль</label>
                            <input type="password" name="password" id="password"/>
                        
                            <label for="password2">Повторите пароль</label>
                            <input type="password" name="password2" id="password2"/>
                        </p>
                        <p>
                            <button type="submit">Зарегистрироваться</button>
                        </p>
                        </form>
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