<%--
  Created by IntelliJ IDEA.
  User: Observer
  Date: 7/12/11
  Time: 5:23 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
        <title>Rate ${rated.firsName}</title>
    </head>
  <body>
    <g:each in="rated.rating"
  </body>
</html>