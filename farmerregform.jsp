<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" 
prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" 
prefix="form" %>
<%@ page session="false" %>

<html>
<head>
	<title>Person Page</title>


</head>
<body>
<h1>
Registration for farmer.
</h1>
<c:url var="registerAction" value="/farmer/reg" ></c:url>
<form:form action="${registerAction}" 
	modelAttribute="farmer">
	<c:if test="${!empty farmer.farmerName}"><br/>
		<form:label path="farmerId">
				<spring:message text="Farmer ID"/>
			</form:label>
		<form:input path="farmerId" readonly="true" 
			size="10"  disabled="true" />
			<form:hidden path="farmerId" />
	</c:if>
	<br/>
	<br/>
			<form:label path="farmerName">
				<spring:message text=" Name"/>
			</form:label>
	
		 <form:input path="farmerName" />
		 
			<%-- <form:errors path="name" cssClass="errors"></form:errors> --%>
		<!-- </td> --> 
<br/>
<br/>
<br/>
	<br/>
			<form:label path="email">
				<spring:message text="Farmer's email"/>
			</form:label>
	
		 <form:input path="email" />

		<form:label path="password">
				<spring:message text="Password"/>
			</form:label>
		
		 <form:input path="password" type="password" /> 
		 <br/>
	<br/>
			<form:label path="phoneNumber">
				<spring:message text="PhoneNumber"/>
			</form:label>
	
		 <form:input path="phoneNumber"  />
		 
		 	  <br/>
	<br/>
			<form:label path="ifscCode">
				<spring:message text="IFSC Code"/>
			</form:label>
	
		 <form:input path="ifscCode" />
		
		 	  <br/>
	<br/>
			<form:label path="accountNumber">
				<spring:message text="Account number"/>
			</form:label>
	
		 <form:input path="accountNumber"  />
			 		 	  <br/>
	<br/>
			<form:label path="localAddress">
				<spring:message text="Local Adress"/>
			</form:label>
	
		 <form:input path="localAddress"  />
		 
			 	  <br/>
	<br/>
			<form:label path="city">
				<spring:message text="city"/>
			</form:label>
	
		 <form:input path="city"  />
		 	 	  <br/>
	<br/>
			<form:label path="stateName">
				<spring:message text="state"/>
			</form:label>
	
		 <form:input path="stateName"  />
		 
		 	 	 
		 	 	 	  <br/>
	<br/>
			<form:label path="landAddress">
				<spring:message text="Land Address"/>
			</form:label>
	
		 <form:input path="landAddress"  />
		
		 	 	 	 	  <br/>
	<br/>
		  <br/>
	<br/>
			<form:label path="landArea">
				<spring:message text="area"/>
			</form:label>
	
		 <form:input path="landArea"  />
		 <br/>
		 <br/>
			<form:label path="landPincode">
				<spring:message text="Pin code"/>
			</form:label>
	
		 <form:input path="landPincode"  />
		 
		
		 
				 	 	 	  <br/>
	<br/>
			<form:label path="aadharNumber">
				<spring:message text="Addhar Card number"/>
			</form:label>
	
		 <form:input path="aadharNumber"  />

		 				 	 	 	  <br/>
	<br/>
			<form:label path="panNumber">
				<spring:message text="Pan number"/>
			</form:label>
	
		 <form:input path="panNumber"  />
		 	 				 	 	 	  <br/>
	<br/>
			<form:label path="certificateNumber">
				<spring:message text="Certificate Number"/>
			</form:label>
	
		 <form:input path="certificateNumber"  />
		 	 	 				 	 	 	  <br/>
	<br/>
			<form:label path="traderLicenseNumber">
				<spring:message text="trader licence number"/>
			</form:label>
	
		 <form:input path="traderLicenseNumber"  />
		 
			<c:if test="${!empty farmer.farmerName}">
				<input type="submit"
					value="<spring:message 
					text="Submit"/>" />
			</c:if>
		</form:form>
<br>
<%-- <h3>Persons List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg" border="1">
	<tr>
		<th width="80">Person ID</th>
		<th width="120">Person Name</th>
		<th width="120">Person Country</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.id}</td>
			<td>${person.name}</td>
			<td>${person.country}</td>
			<td><a href="
			<c:url value='/edit/${person.id}' />" >Edit</a></td>
			<td><a href="
			<c:url value='/remove/${person.id}' />" >Delete</a>
			</td>
		</tr>
	</c:forEach>
	</table> 
</c:if>--%>
</body>
</html>
