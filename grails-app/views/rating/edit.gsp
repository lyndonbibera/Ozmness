

<%@ page import="com.orangeandbronze.ozmness.Rating" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${ratingInstance}">
            <div class="errors">
                <g:renderErrors bean="${ratingInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${ratingInstance?.id}" />
                <g:hiddenField name="version" value="${ratingInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="technology"><g:message code="rating.technology.label" default="Technology" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ratingInstance, field: 'technology', 'errors')}">
                                    <g:select name="technology.id" from="${com.orangeandbronze.ozmness.Technology.list()}" optionKey="id" value="${ratingInstance?.technology?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="value"><g:message code="rating.value.label" default="Value" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ratingInstance, field: 'value', 'errors')}">
                                    <g:select name="value" from="${1..3}" value="${fieldValue(bean: ratingInstance, field: 'value')}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comment"><g:message code="rating.comment.label" default="Comment" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ratingInstance, field: 'comment', 'errors')}">
                                    <g:textField name="comment" value="${ratingInstance?.comment}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="rated"><g:message code="rating.rated.label" default="Rated" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ratingInstance, field: 'rated', 'errors')}">
                                    <g:select name="rated.id" from="${com.orangeandbronze.ozmness.Employee.list()}" optionKey="id" value="${ratingInstance?.rated?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="creator"><g:message code="rating.creator.label" default="Creator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: ratingInstance, field: 'creator', 'errors')}">
                                    <g:select name="creator.id" from="${com.orangeandbronze.ozmness.Employee.list()}" optionKey="id" value="${ratingInstance?.creator?.id}"  />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
