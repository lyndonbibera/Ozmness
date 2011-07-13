<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}"/>
    <title>Rate Mentees</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<h1>Rate Your Mentees:</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Rate</th>
    </tr>
    <g:each in="${rater.mentees}" status="i" var="mentee">
    <tr>
        <td>${mentee.firstName}, ${mentee.lastName}</td>
        <td>${mentee.position}</td>
        <td>
            <g:link action="rate" params='[id:"${mentee.id}"]'>Rate</g:link>
        </td>

    </tr>
</g:each>
</table>

</body>
</html>