<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Rate You Mentee</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<h1>Rating of ${rated.firstName}</h1>
<table>
    <tr>
        <th>Technology</th>
        <th>Rating</th>
        <th>Rater</th>
        <th>Comment</th>
    </tr>
    <g:each in="${rated.ratings}" status="i" var="rating">
        <tr>
            <td>${rating.technology}</td>

            <g:if test="${rater == rating.creator}">
                <td><g:link action="updateRating" id="${rating.id}">${rating.value} [Update]</g:link></td>
            </g:if>
            <g:else>
                <td>${rating.value}</td>
            </g:else>

            <td>${rating.creator}</td>
            <td>${rating.comment}</td>
        </tr>
    </g:each>
</table>
<g:link action="createRating" id="${rated.id}">New Rating</g:link>
</body>
</html>