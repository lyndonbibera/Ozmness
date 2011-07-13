<%@ page import="org.hibernate.criterion.ProjectionList" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>View Awesomeness</title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
</div>

<h1>Employee: ${employee} / ${employee.position}</h1>

<h2>Project Lead:</h2>
<table>
    <tr>
        <th>Project</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Collaborators</th>
    </tr>
    <g:each in="${employee.projectLeads}" var="project">
        <tr>
            <td><g:link controller="project" action="show" id="${project.id}">${project}</g:link></td>
            <td>${project.dateStarted.toGMTString()}</td>
            <td>${project.dateFinished.toGMTString()}</td>
            <td>${project.developers.size()}</td>
        </tr>

    </g:each>
</table>

<h2>Minimum Qualifications for ${employee.position}</h2>

<table>
    <tr>
        <th>Technology</th>
        <th>Required</th>
        <th>Personal Assessment</th>
        <th>Average (Mentor Ratings)</th>
    </tr>

    <g:each in="${employee.position.minimumRatings}" var="minRating">
        <tr>
            <td>${minRating.technology}</td>
            <td>${minRating.value}</td>

            <td>
                %{--<g:each in="${employee.ratings}" var="rating">
                    <g:if test="${employee.equals(rating.creator)&&rating.technology.equals(minRating.technology)}">

                    </g:if>
                </g:each>--}%
                TODO
            </td>

            <td>
                TODO
            </td>
        </tr>
    </g:each>
</table>


<h2>Project Collaborated:</h2>
<table>
    <tr>
        <th>Project</th>
        <th>Project Lead</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Collaborators</th>
    </tr>
    <g:each in="${employee.projects}" var="project">
        <tr>
            <td><g:link controller="project" action="show" id="${project.id}">${project}</g:link></td>
            <td><g:link controller="employee" action="show" id="${project.lead.id}">${project.lead}</g:link></td>
            <td>${project.dateStarted.toGMTString()}</td>
            <td>${project.dateFinished.toGMTString()}</td>
            <td>${project.developers.size()}</td>
        </tr>

    </g:each>
</table>

<h2>Ratings [Self]</h2>
<table>
    <tr>
        <th>Technology</th>
        <th>Rating</th>
    </tr>
    <g:each in="${employee.ratings}" var="rating">
        <g:if test="${employee.equals(rating.creator)}">
            <td><g:link controller="rating" action="show" id="${rating.id}">${rating.technology}</g:link></td>
            <td>${rating.value}</td>
        </g:if>
    </g:each>
</table>


<h2>Ratings [Mentors]</h2>
<table>
    <tr>
        <th>Mentor</th>
        <th>Technology</th>
        <th>Rating</th>
    </tr>
    <g:each in="${employee.ratings}" var="rating">
        <g:if test="${!employee.equals(rating.creator)}">
            <tr>
                <td><g:link controller="rating" action="show" id="${rating.id}">${rating.creator}</g:link></td>
                <td>${rating.technology}</td>
                <td>${rating.value}</td>
            </tr>
        </g:if>
    </g:each>
</table>

</body>
</html>