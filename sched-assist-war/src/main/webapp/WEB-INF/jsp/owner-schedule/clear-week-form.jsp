<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<fmt:formatDate value="${weekOf}" type="time" pattern="MMM d, yyyy" var="formattedWeekOf"/>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<title><spring:message code="application.name"/> - <spring:message code="clear.week.availability.schedule" arguments="${formattedWeekOf }"/></title>
<%@ include file="/WEB-INF/jsp/themes/jasig/head-elements.jsp" %>
<script type="text/javascript" src="<c:url value="/js/jquery.lockSubmit.js"/>"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(':submit').lockSubmit();
});
</script>

</head>

<body>
<%@ include file="/WEB-INF/jsp/themes/jasig/body-start.jsp" %>
<%@ include file="/WEB-INF/jsp/login-info.jsp" %>
<%@ include file="/WEB-INF/jsp/owner-navigation.jsp" %>
<div id="content" class="main col">

<div class="ownerform">
<form:form>
<fieldset>
<legend><spring:message code="clear.week.availability.schedule" arguments="${formattedWeekOf }"/></legend>
<div class="alert">
<p>
<strong><spring:message code="warning"/>:</strong>&nbsp;<spring:message code="clear.week.availability.schedule.help" arguments="${formattedWeekOf }"/>
</p>
<p><spring:message code="clear.week.availability.schedule.cancelwarning" arguments="${formattedWeekOf }"/></p>
</div>
<div class="formerror"><form:errors path="*"/></div>
<label for="confirmedCancelWeek1"><spring:message code="clear.week.availability.schedule.confirm" arguments="${formattedWeekOf }"/>:</label>&nbsp;
<form:checkbox path="confirmedCancelWeek"/>
<form:hidden path="weekOfPhrase"/>
<br/>
<br/>
<input type="submit" value="<spring:message code="submit"/>"/>
</fieldset>
</form:form>
</div> <!-- ownerform -->
<a href="<c:url value="schedule.html"/>">&laquo;<spring:message code="return.to.availability.schedule"/></a>
</div> <!--  content -->

<%@ include file="/WEB-INF/jsp/themes/jasig/body-end.jsp" %>
</body>
</html>