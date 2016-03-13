<%@ page import="com.edu.kist.sms.ParentDetails" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'parentDetails.label', default: 'ParentDetails')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-parentDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                    default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-parentDetails" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="firstName"
                              title="${message(code: 'parentDetails.firstName.label', default: 'First Name')}"/>

            <g:sortableColumn property="lastName"
                              title="${message(code: 'parentDetails.lastName.label', default: 'Last Name')}"/>

            <g:sortableColumn property="email" title="${message(code: 'parentDetails.email.label', default: 'Email')}"/>

            <g:sortableColumn property="addressLine1"
                              title="${message(code: 'parentDetails.addressLine1.label', default: 'Address Line1')}"/>

            <g:sortableColumn property="addressLine2"
                              title="${message(code: 'parentDetails.addressLine2.label', default: 'Address Line2')}"/>

            <g:sortableColumn property="city" title="${message(code: 'parentDetails.city.label', default: 'City')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${parentDetailsInstanceList}" status="i" var="parentDetailsInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${parentDetailsInstance.id}">${fieldValue(bean: parentDetailsInstance, field: "firstName")}</g:link></td>

                <td>${fieldValue(bean: parentDetailsInstance, field: "lastName")}</td>

                <td>${fieldValue(bean: parentDetailsInstance, field: "email")}</td>

                <td>${fieldValue(bean: parentDetailsInstance, field: "addressLine1")}</td>

                <td>${fieldValue(bean: parentDetailsInstance, field: "addressLine2")}</td>

                <td>${fieldValue(bean: parentDetailsInstance, field: "city")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${parentDetailsInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
