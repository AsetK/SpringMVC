<%--
  Created by IntelliJ IDEA.
  User: Asset_Kenezhanov
  Date: 21-Dec-18
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Test JSP 2</title>
</head>
<body>
    <a href="/test/someaction8?siteLanguage=en">English</a>|<a href="/test/someaction8?siteLanguage=ru">Русский</a>
    <h2>Test JSP 2</h2>
    <p>${name}
    <p>${hobby}
    <table>
        <tr><td><spring:message code="label.studentName"/>      </td>       <td>${student.studentName}      </td></tr>
        <tr><td><spring:message code="label.studentHobby"/>     </td>       <td>${student.studentHobby}     </td></tr>
        <tr><td><spring:message code="label.studentMobile"/>    </td>       <td>${student.studentMobile}    </td></tr>
        <tr><td><spring:message code="label.studentDOB"/>       </td>       <td>${student.studentDOB}       </td></tr>
        <tr><td><spring:message code="label.studentSkills"/>    </td>       <td>${student.studentSkills}    </td></tr>

        <tr>
            <td><spring:message code="label.studentAddress"/>    </td>
            <td><spring:message code="label.country"/> ${student.studentAddress.country}
                <spring:message code="label.city"/>  ${student.studentAddress.city}
                <spring:message code="label.street"/> ${student.studentAddress.street}
                <spring:message code="label.pincode"/> ${student.studentAddress.pincode}   </td>
        </tr>
    </table>

</body>
</html>
