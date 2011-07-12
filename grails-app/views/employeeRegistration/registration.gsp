<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.orangeandbronze.ozmness.Employee" %>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title>Employee Registration</title>
  </head>
  <body>

  <g:form action="submitRegistration">

      Username:<g:textField name="username" value="${employee?.username}"/><br/>
      Password:<g:passwordField name="password" value="${employee?.password}"/><br/>
      First Name:<g:textField name="firstName" value="${employee?.firstName}"/><br/>
      Last Name:<g:textField name="lastName" value="${employee?.lastName}"/><br/>
      Position:<g:select name="mentor.id" from="${Employee.list()}" noSelection="Select Mentor" optionKey="id" value="${employee?.mentor?.id}"/>
      <g:submitButton name="create" class="save" value="Register" />
  </g:form>
  </body>
</html>