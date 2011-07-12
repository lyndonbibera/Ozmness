<%--
  Created by IntelliJ IDEA.
  User: Observer
  Date: 7/12/11
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
        <title>Rate Mentees</title>
    </head>
  <body>
  <h1>Rate Your Mentees:</h1>
  <g:each in="${rater.mentees}" status="i" var="mentee">
      <h2>
          <g:link action="rate" params='[id:"${mentee.id}"]'>
          ${mentee.firstName}
          </g:link>
      </h2>
  </g:each>
  </body>
</html>