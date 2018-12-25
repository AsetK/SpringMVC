<%--
  Created by IntelliJ IDEA.
  User: Asset_Kenezhanov
  Date: 20-Dec-18
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Test JSP 1</title>
</head>
<body>
    <a href="/test/someaction4?siteLanguage=en">English</a>|<a href="/test/someaction4?siteLanguage=ru">Русский</a>
    <h2>Test JSP</h2>

    <h2>${msg}</h2>
    <h2>${msg2}</h2>

<%--form:errors path="student.*"/>--%>

<form:form modelAttribute="student" action="/test/someaction7" method="post">
    <table>
        <tr><td><spring:message code="label.studentName"/>      </td>       <td><form:input path="studentName"/>    <form:errors path="studentName"/>       </td></tr>
        <tr><td><spring:message code="label.studentHobby"/>     </td>       <td><form:input path="studentHobby"/>   <form:errors path="studentHobby"/>      </td></tr>
        <tr><td><spring:message code="label.studentMobile"/>    </td>       <td><form:input path="studentMobile"/>  <form:errors path="studentMobile"/>     </td></tr>
        <tr><td><spring:message code="label.studentDOB"/>       </td>       <td><form:input path="studentDOB"/>     <form:errors path="studentDOB"/>        </td></tr>

        <tr><td><spring:message code="label.studentSkills"/>    </td>       <td><form:select path="studentSkills"  multiple="true">
                                                                                <form:option value="Java Core">Java Core</form:option>
                                                                                <form:option value="Spring Core">Spring Core</form:option>
                                                                                <form:option value="Spring MVC">Spring MVC</form:option>
                                                                                </form:select></td></tr>
    </table>

    <table>
        <tr><spring:message code="label.studentAddress"/></tr>
        <tr>
            <td><spring:message code="label.country"/>      <form:input path="studentAddress.country"/> <form:errors path="studentAddress.country"/> </td>
            <td><spring:message code="label.city"/>         <form:input path="studentAddress.city"/>    <form:errors path="studentAddress.city"/> </td>
            <td><spring:message code="label.street"/>       <form:input path="studentAddress.street"/>  <form:errors path="studentAddress.street"/> </td>
            <td><spring:message code="label.pincode"/>      <form:input path="studentAddress.pincode"/> <form:errors path="studentAddress.pincode"/> </td>
        </tr>
    </table>

    <button type="submit">Test</button>
</form:form>
</body>
</html>
