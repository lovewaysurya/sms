<%@ page import="com.edu.kist.sms.Batch" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'batch.label', default: 'Batch')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-batch" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-batch" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list batch">

        <g:if test="${batchInstance?.academicYear}">
            <li class="fieldcontain">
                <span id="academicYear-label" class="property-label"><g:message code="batch.academicYear.label"
                                                                                default="Academic Year"/></span>

                <span class="property-value" aria-labelledby="academicYear-label"><g:formatDate
                        date="${batchInstance?.academicYear}"/></span>

            </li>
        </g:if>

        <g:if test="${batchInstance?.batchAlias}">
            <li class="fieldcontain">
                <span id="batchAlias-label" class="property-label"><g:message code="batch.batchAlias.label"
                                                                              default="Batch Alias"/></span>

                <span class="property-value" aria-labelledby="batchAlias-label"><g:fieldValue bean="${batchInstance}"
                                                                                              field="batchAlias"/></span>

            </li>
        </g:if>

        <g:if test="${batchInstance?.batchCourse}">
            <li class="fieldcontain">
                <span id="batchCourse-label" class="property-label"><g:message code="batch.batchCourse.label"
                                                                               default="Batch Course"/></span>

                <span class="property-value" aria-labelledby="batchCourse-label"><g:fieldValue bean="${batchInstance}"
                                                                                               field="batchCourse"/></span>

            </li>
        </g:if>

        <g:if test="${batchInstance?.batchName}">
            <li class="fieldcontain">
                <span id="batchName-label" class="property-label"><g:message code="batch.batchName.label"
                                                                             default="Batch Name"/></span>

                <span class="property-value" aria-labelledby="batchName-label"><g:fieldValue bean="${batchInstance}"
                                                                                             field="batchName"/></span>

            </li>
        </g:if>

        <g:if test="${batchInstance?.endDate}">
            <li class="fieldcontain">
                <span id="endDate-label" class="property-label"><g:message code="batch.endDate.label"
                                                                           default="End Date"/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate
                        date="${batchInstance?.endDate}"/></span>

            </li>
        </g:if>

        <g:if test="${batchInstance?.startDate}">
            <li class="fieldcontain">
                <span id="startDate-label" class="property-label"><g:message code="batch.startDate.label"
                                                                             default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate
                        date="${batchInstance?.startDate}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: batchInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${batchInstance}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
