<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Update Rating</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>
<g:form method="post">
    <g:hiddenField name="id" value="${rating?.id}"/>

    <h1>${rating.technology} for ${rating.rated}</h1>
    Value:<g:select name="value" from="${1..3}" value="${fieldValue(bean: rating, field: 'value')}"/> <br/>
    Comment:<g:textArea rows="5" cols="1" name="comment" value="${rating?.comment}"/><br/>

    <g:actionSubmit value="Update" action="submitUpdate"/>
</g:form>
</body>
</html>