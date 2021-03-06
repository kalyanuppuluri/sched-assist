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

<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<rs:resourceURL var="exclIcon" value="/rs/famfamfam/silk/1.3/exclamation.png"/>
<style type="text/css">
.SchedulingAssistant	{
	margin: 2px;
}
.SchedulingAssistant .alert {
	background: #fff6bf url(${exclIcon}) center no-repeat;
	background-position: 15px 50%;
	text-align: left;
	padding: 5px 20px 5px 45px;
	border: 2px solid #ffd324;
}
</style>
<div class="SchedulingAssistant">
<portlet:renderURL var="returnUrl" windowState="minimized">
	<portlet:param name="availableAction" value="ownerSelect"/>
</portlet:renderURL>
<div class="alert">
<p><spring:message code="schedule.owner.not.found"/></p>
<a href="${returnUrl }">&laquo;<spring:message code="make.appointment.with.someone.else"/></a>
</div>
</div> <!-- close SchedulingAssistant -->