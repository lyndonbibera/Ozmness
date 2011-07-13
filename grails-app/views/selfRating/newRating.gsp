<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Add Another Rating</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<h1>Add a new Rating for Yourself</h1>
<g:form action="saveRating">
    Technology:<g:select name="technology.id" from="${technologies}" optionKey="id"
                         value="${rating?.technology?.id}"/><br/>
    Value:<g:select name="value" from="${1..3}" value="${rating?.value}"/><br/>
    Comment: <g:textArea name="comment" rows="5" cols="1"/><br/>
    <g:submitButton name="submit" value="Add Rating"/>
</g:form>
</body>
</html>