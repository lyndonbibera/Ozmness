<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Update Account</title>
</head>

<body>

<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>
<h1>Update Account</h1>
<g:form action="submitChanges">
    <g:hiddenField name="id" value="${employee.id}"/>
    Username:<g:textField name="username" value="${employee?.username}"/> <br/>
    Password:<g:passwordField name="password"/> <br/>
    Confirm Password:<g:passwordField name="confirm_password"/> <br/>
    Position:<g:select from="${positions}" name="position.id" optionKey="id" value="${employee?.id}"/> <br/>
    First Name:<g:textField name="firstName" value="${employee?.firstName}"/> <br/>
    Last Name:<g:textField name="lastName" value="${employee?.lastName}"/> <br/>
    <g:submitButton name="submit" value="Update"/>
</g:form>
</body>
</html>