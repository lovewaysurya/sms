
<%@ page import="com.edu.kist.sms.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
<asset:stylesheet src="bootstarp.css"></asset:stylesheet>
		<asset:stylesheet src="bootstrap.mini.css"></asset:stylesheet>
	</head>
	<body>
		%{--<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		<div id="list-course" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<g:sortableColumn property="activeStatus" title="${message(code: 'course.activeStatus.label', default: 'Active Status')}" />
					
						<g:sortableColumn property="courseAlias" title="${message(code: 'course.courseAlias.label', default: 'Course Alias')}" />
					
						<g:sortableColumn property="courseCode" title="${message(code: 'course.courseCode.label', default: 'Course Code')}" />
					
						<g:sortableColumn property="courseName" title="${message(code: 'course.courseName.label', default: 'Course Name')}" />
					<td>Action</td>
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "activeStatus")}</g:link></td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseAlias")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseCode")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseName")}</td>
					     <td>
							 <g:form url="[resource:courseInstance, action:'delete']" method="DELETE">
								 <fieldset class="buttons">
									 <g:link class="edit" action="edit" resource="${courseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
									 <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" ><i class="glyphicon glyphicon-arrow-down"></i> </g:actionSubmit>
								 </fieldset>
							 </g:form>
						 </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
