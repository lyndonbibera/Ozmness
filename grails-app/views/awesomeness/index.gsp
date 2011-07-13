<%--
  Created by IntelliJ IDEA.
  User: Observer
  Date: 7/13/11
  Time: 2:37 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Awesome Employees</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<h1>Employees</h1>
<table>
    <tr>
        <th>Employee</th>
        <th>Position</th>
    </tr>
    <g:each in="${employees}" var="employee">
        <tr>
            <td><g:link action="showAwesomeness" id="${employee.id}">${employee}</g:link></td>
            <td>${employee.position}</td>
        </tr>
    </g:each>
</table>
</body>
</html>