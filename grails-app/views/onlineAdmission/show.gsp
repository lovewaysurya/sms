
<%@ page import="com.edu.kist.sms.OnlineAdmission" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'onlineAdmission.label', default: 'OnlineAdmission')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-onlineAdmission" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-onlineAdmission" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list onlineAdmission">
			
				<g:if test="${onlineAdmissionInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="onlineAdmission.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="onlineAdmission.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="onlineAdmission.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="onlineAdmission.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.action}">
				<li class="fieldcontain">
					<span id="action-label" class="property-label"><g:message code="onlineAdmission.action.label" default="Action" /></span>
					
						<span class="property-value" aria-labelledby="action-label"><g:formatBoolean boolean="${onlineAdmissionInstance?.action}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="onlineAdmission.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.batch}">
				<li class="fieldcontain">
					<span id="batch-label" class="property-label"><g:message code="onlineAdmission.batch.label" default="Batch" /></span>
					
						<span class="property-value" aria-labelledby="batch-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="batch"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.chooseFile}">
				<li class="fieldcontain">
					<span id="chooseFile-label" class="property-label"><g:message code="onlineAdmission.chooseFile.label" default="Choose File" /></span>
					
						<span class="property-value" aria-labelledby="chooseFile-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="chooseFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="onlineAdmission.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="onlineAdmission.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="onlineAdmission.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="course"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="onlineAdmission.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${onlineAdmissionInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.documentCategory}">
				<li class="fieldcontain">
					<span id="documentCategory-label" class="property-label"><g:message code="onlineAdmission.documentCategory.label" default="Document Category" /></span>
					
						<span class="property-value" aria-labelledby="documentCategory-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="documentCategory"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.documentDetails}">
				<li class="fieldcontain">
					<span id="documentDetails-label" class="property-label"><g:message code="onlineAdmission.documentDetails.label" default="Document Details" /></span>
					
						<span class="property-value" aria-labelledby="documentDetails-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="documentDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="onlineAdmission.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.houseNo}">
				<li class="fieldcontain">
					<span id="houseNo-label" class="property-label"><g:message code="onlineAdmission.houseNo.label" default="House No" /></span>
					
						<span class="property-value" aria-labelledby="houseNo-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="houseNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.mobileNo}">
				<li class="fieldcontain">
					<span id="mobileNo-label" class="property-label"><g:message code="onlineAdmission.mobileNo.label" default="Mobile No" /></span>
					
						<span class="property-value" aria-labelledby="mobileNo-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="mobileNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.nationality}">
				<li class="fieldcontain">
					<span id="nationality-label" class="property-label"><g:message code="onlineAdmission.nationality.label" default="Nationality" /></span>
					
						<span class="property-value" aria-labelledby="nationality-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="nationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.phoneNO}">
				<li class="fieldcontain">
					<span id="phoneNO-label" class="property-label"><g:message code="onlineAdmission.phoneNO.label" default="Phone NO" /></span>
					
						<span class="property-value" aria-labelledby="phoneNO-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="phoneNO"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="onlineAdmission.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.religion}">
				<li class="fieldcontain">
					<span id="religion-label" class="property-label"><g:message code="onlineAdmission.religion.label" default="Religion" /></span>
					
						<span class="property-value" aria-labelledby="religion-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="religion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="onlineAdmission.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${onlineAdmissionInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="onlineAdmission.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${onlineAdmissionInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:onlineAdmissionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${onlineAdmissionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
