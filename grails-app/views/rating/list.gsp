
<%@ page import="com.orangeandbronze.ozmness.Rating" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rating.label', default: 'Rating')}" />
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
                            <th><g:message code="rating.technology.label" default="Technology" /></th>
                        
                            <g:sortableColumn property="value" title="${message(code: 'rating.value.label', default: 'Value')}" />
                        
                            <g:sortableColumn property="comment" title="${message(code: 'rating.comment.label', default: 'Comment')}" />
                        
                            <th><g:message code="rating.rated.label" default="Rated" /></th>
                        
                            <th><g:message code="rating.creator.label" default="Creator" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${ratingInstanceList}" status="i" var="ratingInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link action="show" id="${ratingInstance.id}">${fieldValue(bean: ratingInstance, field: "technology")}</g:link></td>
                        
                            <td>${fieldValue(bean: ratingInstance, field: "value")}</td>
                        
                            <td>${fieldValue(bean: ratingInstance, field: "comment")}</td>
                        
                            <td>${fieldValue(bean: ratingInstance, field: "rated")}</td>
                        
                            <td>${fieldValue(bean: ratingInstance, field: "creator")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${ratingInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
