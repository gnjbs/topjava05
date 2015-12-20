<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page import="ru.javawebinar.topjava.LoggedUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

    <%
        LoggedUser loggedUser = new LoggedUser();
        loggedUser.id = 1;

    %>
    <form action="mealList.jsp">
        <input type="checkbox" name="loggedUserStatus" value="${loggedUser.id}"> LoggedUser<BR>

        <input type="submit" value="LOGIN" ${loggedUser.id}= 1>
    </form>
    <form>
        <table>
            <tr>
                <td>From Date: <input type="date" value="${meal.dateTime}" name="startDate"></td>
                <td>From Time: <input type="time" value="${meal.dateTime}" name="starTime"></td>
            </tr>
            <tr>
                <td>To Date: <input type="date" value="${meal.dateTime}" name="endTime"></td>
                <td>To Time: <input type="time" value="${meal.dateTime}" name="endTime"></td>
            </tr>

        </table>
        <input type="submit" value="Filter">
    </form>

    <title>Meal list</title>
    <style>
        .normal {
            color: green;
        }

        .exceeded {
            color: red;
        }
    </style>
</head>
<body>
<section>
    <h2><a href="index.html">Home</a></h2>
    <h3>Meal list</h3>
    <a href="meals?action=create">Add Meal</a>
    <hr>
    <table border="1" cellpadding="8" cellspacing="0">
        <thead>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <c:forEach items="${mealList}" var="meal">
            <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.UserMealWithExceed"/>
            <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
                <td>
                        <%--<fmt:parseDate value="${meal.dateTime}" pattern="y-M-dd'T'H:m" var="parsedDate"/>--%>
                        <%--<fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd HH:mm" />--%>
                    <%=TimeUtil.toString(meal.getDateTime())%>
                </td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
                <td><a href="meals?action=update&id=${meal.id}">Update</a></td>
                <td><a href="meals?action=delete&id=${meal.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</section>
</body>
</html>