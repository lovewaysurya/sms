
<%@ page import="com.edu.kist.sms.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-course" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list course">
			
				<g:if test="${courseInstance?.activeStatus}">
				<li class="fieldcontain">
					<span id="activeStatus-label" class="property-label"><g:message code="course.activeStatus.label" default="Active Status" /></span>
					
						<span class="property-value" aria-labelledby="activeStatus-label"><g:formatBoolean boolean="${courseInstance?.activeStatus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.courseAlias}">
				<li class="fieldcontain">
					<span id="courseAlias-label" class="property-label"><g:message code="course.courseAlias.label" default="Course Alias" /></span>
					
						<span class="property-value" aria-labelledby="courseAlias-label"><g:fieldValue bean="${courseInstance}" field="courseAlias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.courseCode}">
				<li class="fieldcontain">
					<span id="courseCode-label" class="property-label"><g:message code="course.courseCode.label" default="Course Code" /></span>
					
						<span class="property-value" aria-labelledby="courseCode-label"><g:fieldValue bean="${courseInstance}" field="courseCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseInstance?.courseName}">
				<li class="fieldcontain">
					<span id="courseName-label" class="property-label"><g:message code="course.courseName.label" default="Course Name" /></span>
					
						<span class="property-value" aria-labelledby="courseName-label"><g:fieldValue bean="${courseInstance}" field="courseName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:courseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${courseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
