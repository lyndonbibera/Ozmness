<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Rate Mentee</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>
<g:form method="post" action="submitCreate">
    <g:hiddenField name="rated.id" value="${rating.rated.id}"/>

    <h1>Rate ${rating.rated}</h1>

    Technology:<g:select name="technology.id" from="${technologies}" optionKey="id" value="${rating?.technology?.id}"/>
    Value:<g:select name="value" from="${1..3}" value="${rating.value}"/><br/>
    Comment: <g:textArea name="comment" rows="5" cols="1"/><br/>

    <g:submitButton name="create" value="Create"/>
</g:form>
</body>
</html>