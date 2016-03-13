
<%@ page import="com.edu.kist.sms.ParentDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parentDetails.label', default: 'ParentDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-parentDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-parentDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list parentDetails">
			
				<g:if test="${parentDetailsInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="parentDetails.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${parentDetailsInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="parentDetails.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${parentDetailsInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="parentDetails.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${parentDetailsInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="parentDetails.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${parentDetailsInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="parentDetails.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${parentDetailsInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="parentDetails.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${parentDetailsInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="parentDetails.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${parentDetailsInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="parentDetails.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${parentDetailsInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.education}">
				<li class="fieldcontain">
					<span id="education-label" class="property-label"><g:message code="parentDetails.education.label" default="Education" /></span>
					
						<span class="property-value" aria-labelledby="education-label"><g:fieldValue bean="${parentDetailsInstance}" field="education"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.income}">
				<li class="fieldcontain">
					<span id="income-label" class="property-label"><g:message code="parentDetails.income.label" default="Income" /></span>
					
						<span class="property-value" aria-labelledby="income-label"><g:fieldValue bean="${parentDetailsInstance}" field="income"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.mobilePhoneNol}">
				<li class="fieldcontain">
					<span id="mobilePhoneNol-label" class="property-label"><g:message code="parentDetails.mobilePhoneNol.label" default="Mobile Phone Nol" /></span>
					
						<span class="property-value" aria-labelledby="mobilePhoneNol-label"><g:fieldValue bean="${parentDetailsInstance}" field="mobilePhoneNol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.occupation}">
				<li class="fieldcontain">
					<span id="occupation-label" class="property-label"><g:message code="parentDetails.occupation.label" default="Occupation" /></span>
					
						<span class="property-value" aria-labelledby="occupation-label"><g:fieldValue bean="${parentDetailsInstance}" field="occupation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="parentDetails.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${parentDetailsInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="parentDetails.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${parentDetailsInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.relationship}">
				<li class="fieldcontain">
					<span id="relationship-label" class="property-label"><g:message code="parentDetails.relationship.label" default="Relationship" /></span>
					
						<span class="property-value" aria-labelledby="relationship-label"><g:fieldValue bean="${parentDetailsInstance}" field="relationship"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parentDetailsInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="parentDetails.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${parentDetailsInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:parentDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${parentDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
