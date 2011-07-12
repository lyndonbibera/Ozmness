
<%@ page import="com.orangeandbronze.ozmness.MinimumRating" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'minimumRating.label', default: 'MinimumRating')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <th><g:message code="minimumRating.technology.label" default="Technology" /></th>
                        
                            <g:sortableColumn property="value" title="${message(code: 'minimumRating.value.label', default: 'Value')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${minimumRatingInstanceList}" status="i" var="minimumRatingInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link action="show" id="${minimumRatingInstance.id}">${fieldValue(bean: minimumRatingInstance, field: "technology")}</g:link></td>
                        
                            <td>${fieldValue(bean: minimumRatingInstance, field: "value")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${minimumRatingInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
