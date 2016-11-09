<%-- 
    Document   : index
    Created on : 
    Author     : Slesarenko K.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/style01.css"/>"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Описание спектакля</title>
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
                <h2>Список статей</h2>
                <ul>
                    <li><a href="#">Спектакль 1</a></li>
                    <li><a href="#">Спектакль 2</a></li>
                    <li><a href="#">Спектакль 3</a></li>
                    <li><a href="#">Спектакль 4</a></li>
                    
                </ul>
            </aside>
            <section>
                <article>
                    <h1>Описание спектакля</h1>
                    <div class="text-article">
                        Текст описания
                    </div>
                    <div class="fotter-article">
                        <span class="autor">Автор: <a href="#">автор</a></span>
                        <span class="date-article">Дата: 20.12.2012</span>
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