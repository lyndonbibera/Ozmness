<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Your Personal Ratings</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<h1>Self Ratings</h1>
<g:if test="${ratings.size() == 0}">
    <h2>No rating yet...</h2>
</g:if>
<table>
    <tr>
        <th>Technology</th>
        <th>Rating</th>
        <th>Comment</th>
    </tr>

    <g:each in="${ratings}" var="rating">
        <tr>
            <td><g:link action="updateRating" id="${rating.id}">${rating.technology}</g:link></td>
            <td>${rating.value}</td>
            <td>${rating.comment}</td>
        </tr>
    </g:each>
</table>

<g:link action="newRating">Add New Rating</g:link>
</body>
</html>