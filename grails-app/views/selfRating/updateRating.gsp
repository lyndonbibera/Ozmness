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

<h1>Update your ${rating.technology} rating:</h1>

<g:form action="saveRating">
    <g:hiddenField name="id" value="${rating.id}"/>

    Value:<g:select name="value" from="${1..3}" value="${rating.value}"/><br/>
    Comment:<g:textArea name="comment" rows="5" cols="1" value="${rating.comment}"/><br/>

    <g:submitButton name="submit" value="Update Ratings"/>
</g:form>
</body>
</html>