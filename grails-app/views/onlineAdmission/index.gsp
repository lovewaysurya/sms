<%@ page import="com.edu.kist.sms.OnlineAdmission" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'onlineAdmission.label', default: 'OnlineAdmission')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-onlineAdmission" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                      default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-onlineAdmission" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="firstName"
                              title="${message(code: 'onlineAdmission.firstName.label', default: 'First Name')}"/>

            <g:sortableColumn property="middleName"
                              title="${message(code: 'onlineAdmission.middleName.label', default: 'Middle Name')}"/>

            <g:sortableColumn property="lastName"
                              title="${message(code: 'onlineAdmission.lastName.label', default: 'Last Name')}"/>

            <g:sortableColumn property="email"
                              title="${message(code: 'onlineAdmission.email.label', default: 'Email')}"/>

            <g:sortableColumn property="action"
                              title="${message(code: 'onlineAdmission.action.label', default: 'Action')}"/>

            <g:sortableColumn property="address"
                              title="${message(code: 'onlineAdmission.address.label', default: 'Address')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${onlineAdmissionInstanceList}" status="i" var="onlineAdmissionInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${onlineAdmissionInstance.id}">${fieldValue(bean: onlineAdmissionInstance, field: "firstName")}</g:link></td>

                <td>${fieldValue(bean: onlineAdmissionInstance, field: "middleName")}</td>

                <td>${fieldValue(bean: onlineAdmissionInstance, field: "lastName")}</td>

                <td>${fieldValue(bean: onlineAdmissionInstance, field: "email")}</td>

                <td><g:formatBoolean boolean="${onlineAdmissionInstance.action}"/></td>

                <td>${fieldValue(bean: onlineAdmissionInstance, field: "address")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${onlineAdmissionInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
