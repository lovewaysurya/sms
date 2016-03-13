<%@ page import="com.edu.kist.sms.Batch" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <asset:javascript src="bootstrap.js"/>
        <asset:javascript src="bootstrap.min.js"/>
</head>

<body>
<a href="#list-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-batch" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="academicYear"
                              title="${message(code: 'batch.academicYear.label', default: 'Academic Year')}"/>

            <g:sortableColumn property="batchAlias"
                              title="${message(code: 'batch.batchAlias.label', default: 'Batch Alias')}"/>

            <g:sortableColumn property="batchCourse"
                              title="${message(code: 'batch.batchCourse.label', default: 'Batch Course')}"/>

            <g:sortableColumn property="batchName"
                              title="${message(code: 'batch.batchName.label', default: 'Batch Name')}"/>

            <g:sortableColumn property="endDate" title="${message(code: 'batch.endDate.label', default: 'End Date')}"/>

            <g:sortableColumn property="startDate"
                              title="${message(code: 'batch.startDate.label', default: 'Start Date')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${batchInstanceList}" status="i" var="batchInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${batchInstance.id}">${fieldValue(bean: batchInstance, field: "academicYear")}</g:link></td>

                <td>${fieldValue(bean: batchInstance, field: "batchAlias")}</td>

                <td>${fieldValue(bean: batchInstance, field: "batchCourse")}</td>

                <td>${fieldValue(bean: batchInstance, field: "batchName")}</td>

                <td><g:formatDate date="${batchInstance.endDate}"/></td>

                <td><g:formatDate date="${batchInstance.startDate}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${batchInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
