<%--
  Created by IntelliJ IDEA.
  User: Asset_Kenezhanov
  Date: 21-Dec-18
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Test JSP 2</title>
</head>
<body>
    <h2>Test JSP 2</h2>
    <p>${name}
    <p>${hobby}
    <table>
        <tr><td>Student name:       </td>       <td>${student.studentName}      </td></tr>
        <tr><td>Student hobby:      </td>       <td>${student.studentHobby}     </td></tr>
        <tr><td>Student mobile:     </td>       <td>${student.studentMobile}    </td></tr>
        <tr><td>Student DOB:        </td>       <td>${student.studentDOB}       </td></tr>
        <tr><td>Student skills:     </td>       <td>${student.studentSkills}    </td></tr>

        <tr>
            <td>Student address:    </td>
            <td>country: ${student.studentAddress.country}
                   city: ${student.studentAddress.city}
                 street: ${student.studentAddress.street}
                pincode: ${student.studentAddress.pincode}   </td>
        </tr>
    </table>

</body>
</html>
