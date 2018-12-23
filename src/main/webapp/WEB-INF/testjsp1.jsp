<%--
  Created by IntelliJ IDEA.
  User: Asset_Kenezhanov
  Date: 20-Dec-18
  Time: 12:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Test JSP 1</title>
</head>
<body>
    <h2>Test JSP</h2>

    <h2>${msg}</h2>
    <h2>${msg2}</h2>

    <form:errors path="student.*"/>

    <form action="/test/someaction7" method="post">
        <table>
            <tr><td>Student's Name:     </td>       <td><input type="text" name="studentName"/>     </td></tr>
            <tr><td>Student's Hobby:    </td>       <td><input type="text" name="studentHobby"/>    </td></tr>
            <tr><td>Student's Mobile:   </td>       <td><input type="text" name="studentMobile"/>   </td></tr>
            <tr><td>Student's DOB:      </td>       <td><input type="text" name="studentDOB"/>      </td></tr>

            <tr><td>Student's Skills:   </td>       <td><select name="studentSkills" multiple>
                                                        <option value="Java Core">Java Core</option>
                                                        <option value="Spring Core">Spring Core</option>
                                                        <option value="Spring MVC">Spring MVC</option>
                                                        </select></td></tr>
        </table>

        <table>
            <tr>Student Address:</tr>
            <tr>
                <td>country:<input type="text" name="studentAddress.country"/></td>
                <td>city:<input type="text" name="studentAddress.city"/></td>
                <td>street:<td><input type="text" name="studentAddress.street"/></td>
                <td>pincode:<input type="text" name="studentAddress.pincode"/></td>
            </tr>
        </table>

        <button type="submit">Test</button>
    </form>
</body>
</html>
